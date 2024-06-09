load("@bazel_lilypond//:lilypond.bzl", "lilypond")
load("@bazel_skylib//lib:paths.bzl", "paths")

def build_sheet_music(srcs, filegroup):

  target_names = []

  for src_ly in srcs:
    target_name = paths.replace_extension(src_ly, "")
    target_names.append(target_name)
    lilypond(
        name=target_name,
        src=src_ly,
        visibility=["//visibility:public"],
    )

  native.filegroup(
    name=filegroup,
    srcs=[
      target_name + ".png"
      for target_name in target_names
    ] + [
      target_name + ".midi"
      for target_name in target_names
    ],
    visibility=["//visibility:public"],
  )

  return target_names
