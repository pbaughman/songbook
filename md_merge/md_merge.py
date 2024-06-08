import argparse
import os
import re
import sys

def parse_args(argv):
  parser = argparse.ArgumentParser()
  parser.add_argument('-t', '--template', required=True)
  parser.add_argument('-o', '--output', required=True)
  parser.add_argument('-i', '--include', action='append')
  return parser.parse_args(argv)

def find_include(file_name, include_files):
  """Finds a file reverenced in the template by searching al included files.

  Returns:
    A file path like "/path/to/to_include.md"
  """
  for artifact_path in include_files:
    if artifact_path.endswith(file_name):
      return artifact_path
  raise FileNotFoundError(
      f"Failed to find {file_name} in any of {include_files}"
      )

def main(argv):
  args = parse_args(argv)
  with open(args.template, 'r') as rfile:
    infile = rfile.read()
  outfile = infile
  for include in re.findall(r'{{.+}}', infile):
    include_file = include.strip('{}')
    with open(find_include(include_file, args.include), 'r') as content:
      outfile = outfile.replace(include, content.read())

  with open(args.output, 'w') as wfile:
    wfile.write(outfile)

if __name__ == "__main__":
  main(sys.argv[1:])
