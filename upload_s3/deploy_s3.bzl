load("@bazel_skylib//rules:run_binary.bzl", "run_binary")

def deploy(name, bucket, files):

  run_binary(
    name=name,
    outs=['deploy_result.txt'],
    srcs=files,
    args=[
      "--bucket={}".format(bucket),
      "--output=$(location deploy_result.txt)",
    ] + [
      "$(locations {})".format(file)
      for file in files
    ],
    tool="//upload_s3:upload",
    tags=['no-cache'],
  )
