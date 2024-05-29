import argparse
import os
import re
import sys

def parse_args(argv):
  parser = argparse.ArgumentParser()
  parser.add_argument('-o', '--output', required=True)
  parser.add_argument('song_files', nargs='+')
  return parser.parse_args(argv)

def target_name_to_title_name(target_name):
  title_str = target_name.replace('_', ' ')
  return title_str.title()

def main(argv):
  args = parse_args(argv)
  with open(args.output, 'w') as wfile:
    for song_file in sorted(args.song_files):
      wfile.write(f'* {target_name_to_title_name(song_file)}\n')
      wfile.write(f'    * [Sheet Music](./{song_file}.png)\n')
      wfile.write(f'    * [MIDI](./{song_file}.midi)\n')

if __name__ == "__main__":
  main(sys.argv[1:])
