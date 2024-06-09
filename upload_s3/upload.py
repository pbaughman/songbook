import argparse
import os
import sys

import boto3

def parse_args(argv):
  parser = argparse.ArgumentParser()
  parser.add_argument('-f', '--file', required=True, action='append')
  parser.add_argument('-b', '--bucket', required=True)
  return parser.parse_args(argv)

def main(argv):
  args = parse_args(argv)
  # Make sure to have an ~/.aws/credentials file set up before this will work.
  session = boto3.Session(profile_name=args.bucket)
  s3_client = session.client('s3')
  for file_name in args.file:
    s3_client.upload_file(file_name, args.bucket, os.path.basename(file_name))


if __name__ == "__main__":
  main(sys.argv[1:])
