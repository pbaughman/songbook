load("@my_deps//:requirements.bzl", "requirement")
load("@rules_python//python:defs.bzl", "py_binary")

py_binary(
  name = "upload",
  srcs = ["upload.py"],
  visibility=["//visibility:public"],
  deps = [
    requirement("boto3")
  ]
)
