load("//bazel_pandoc:pandoc.bzl", "pandoc")
load("@bazel_skylib//rules:run_binary.bzl", "run_binary")


run_binary(
  name="index",
  srcs=[
    "index.template.md",
    "song_list.md",
  ],
  outs=["index.md"],
  args = [
    "--template=$(location index.template.md)",
    "--output=$(location index.md)",
    "--include=$(location song_list.md)",
  ],
  tool="//md_merge:md_merge"
)

pandoc(
  name = "index_html",
  src = "index.md",
  output = "index.html",
  options = ["--shift-heading-level-by=-1", "--standalone"],
)
