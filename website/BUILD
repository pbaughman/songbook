load("//bazel_pandoc:pandoc.bzl", "pandoc")
load("@bazel_skylib//rules:run_binary.bzl", "run_binary")
load("//upload_s3:deploy_s3.bzl", "deploy")


run_binary(
  name="index",
  srcs=[
    "index.template.md",
    "//songs:song_list.md",
  ],
  outs=["index.md"],
  args = [
    "--template=$(location index.template.md)",
    "--output=$(location index.md)",
    "--include=$(location //songs:song_list.md)",
  ],
  tool="//md_merge:md_merge"
)

pandoc(
  name = "index_html",
  src = "index.md",
  output = "index.html",
  options = [
    "--shift-heading-level-by=-1", 
    "--standalone",
    "--include-after-body=$(location script.html)",
  ],
  data = [
    ":script.html",
  ]
)

deploy(
  name="deploy_petestuff",
  bucket="petestuff.net",
  files=[
    "//songs:all_artifacts",
    ":index.html",
    ":songbook.pdf",
  ],
)
