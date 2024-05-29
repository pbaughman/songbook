load("@bazel_lilypond//:lilypond.bzl", "lilypond")
load("@bazel_skylib//lib:paths.bzl", "paths")

def build_sheet_music(srcs):

  target_names = []

  for src_ly in srcs:
    target_name = paths.replace_extension(src_ly, "")
    target_names.append(target_name)
    lilypond(name=target_name, src=src_ly)

  return target_names
