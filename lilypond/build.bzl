load("@bazel_skylib//lib:paths.bzl", "paths")

def ly_png(name, src):
  outfile_png = paths.replace_extension(src, ".png")
  native.genrule(
    name = name,
    srcs=[src],
    outs=[outfile_png],
    tools=["@lilypond_archive//:bin/lilypond"],
    cmd="""$(location @lilypond_archive//:bin/lilypond) \
        --png \
        --output=$(RULEDIR) \
        $(location {})
    """.format(src)
  )
