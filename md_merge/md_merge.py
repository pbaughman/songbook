import argparse
import os
import re
import sys

def parse_args(argv):
  parser = argparse.ArgumentParser()
  parser.add_argument('-t', '--template', required=True)
  parser.add_argument('-o', '--output', required=True)
  return parser.parse_args(argv)

def main(argv):
  args = parse_args(argv)
  print(os.getcwd())
  infile_dir = os.path.dirname(args.template)
  with open(args.template, 'r') as rfile:
    infile = rfile.read()
  outfile = infile
  for include in re.findall(r'{{.+}}', infile):
    include_file = include.strip('{}')
    with open(os.path.join(infile_dir, include_file), 'r') as content:
      outfile = outfile.replace(include, content.read())

  with open(args.output, 'w') as wfile:
    wfile.write(outfile)

if __name__ == "__main__":
  main(sys.argv[1:])
