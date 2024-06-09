import argparse
import hashlib
import mimetypes
import os
import sys

import boto3
import botocore

def parse_args(argv):
  parser = argparse.ArgumentParser()
  parser.add_argument('files', nargs='+')
  parser.add_argument('-b', '--bucket', required=True)
  parser.add_argument('-o', '--output')
  return parser.parse_args(argv)

def get_server_hash(client, file_name, bucket_name):
  """Get the sha256sum metadata field we added during upload.

  Returns:
    The sha256 hash of the uploaded file, as a string containing hex digits
    or an empty string if the file was not found.
  """
  try:
    object_metadata = client.head_object(
        Key=os.path.basename(file_name),
        Bucket=bucket_name
        )
    return object_metadata['Metadata']['sha256sum']
  except botocore.exceptions.ClientError as e:
    if e.response['Error']['Code'] == '404':
      return ''
    raise

def upload_file(client, file_name, bucket_name):
  with open(file_name, "rb") as f:
    digest = hashlib.file_digest(f, "sha256")
  if digest.hexdigest() == get_server_hash(client, file_name, bucket_name):
    return False

  mimetype, _ = mimetypes.guess_type(file_name)
  extra_args = {
      "Metadata": {'sha256sum': digest.hexdigest()}
      }
  if mimetype:
    extra_args['ContentType'] = mimetype
  client.upload_file(
      file_name,
      bucket_name ,
      os.path.basename(file_name),
      ExtraArgs=extra_args,
      )
  return True


def main(argv):
  args = parse_args(argv)
  # Make sure to have an ~/.aws/credentials file set up before this will work.
  session = boto3.Session(profile_name=args.bucket)
  s3_client = session.client('s3')
  # A future version of this should check the hash of the local file and the
  # remote file and skip if they're the same, then output what aws actually
  # uploaded.
  for file_locations in args.files:
    for file_name in file_locations.split(' '):
      if upload_file(s3_client, file_name, args.bucket):
        print(f'{file_name} uploaded')
      else:
        print(f'{file_name} already up to date on S3')
  if args.output:
    with open(args.output, 'w') as outfile:
      outfile.write('ok')


if __name__ == "__main__":
  main(sys.argv[1:])
