load("@bazel_lilypond//:lilypond.bzl", "lilypond")
load("@bazel_skylib//rules:run_binary.bzl", "run_binary")
load("@rules_python//python:defs.bzl", "py_binary")
load(":build_sheetmusic.bzl", "build_sheet_music")

sheet_music_targets = build_sheet_music(
  srcs=glob(include=["*.ly"]),
  filegroup="all_artifacts",
)

py_binary(
  name = "songlist_from_files",
  srcs = ["songlist_from_files.py"],
)

run_binary(
  name="generate_song_list_md",
  outs=["song_list.md"],
  args=["--output=$(location song_list.md)"] + sheet_music_targets,
  tool=":songlist_from_files",
  visibility=["//visibility:public"],
)
