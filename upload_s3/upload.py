import argparse
import mimetypes
import os
import sys

import boto3

def parse_args(argv):
  parser = argparse.ArgumentParser()
  parser.add_argument('files', nargs='+')
  parser.add_argument('-b', '--bucket', required=True)
  parser.add_argument('-o', '--output')
  return parser.parse_args(argv)

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
      mimetype, _ = mimetypes.guess_type(file_name)
      s3_client.upload_file(
          file_name,
          args.bucket,
          os.path.basename(file_name),
          ExtraArgs={"ContentType": mimetype} if mimetype else {},
          )
      print(f'{file_name} uploaded')
  if args.output:
    with open(args.output, 'w') as outfile:
      outfile.write('ok')


if __name__ == "__main__":
  main(sys.argv[1:])
