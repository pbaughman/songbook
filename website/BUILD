load("//bazel-pandoc:pandoc.bzl", "pandoc")

pandoc(
  name = "index",
  src = "index.md",
  to_format = "html",
  options = ["--shift-heading-level-by=-1", "--standalone"],
)
