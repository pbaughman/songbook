load("@bazel_skylib//lib:paths.bzl", "paths")

def ly_png(name, src):
  outfile_png = paths.replace_extension(src, ".png")
  _ly_outs(name, src, [outfile_png])

def ly_png_midi(name, src):
  outfile_png = paths.replace_extension(src, ".png")
  outfile_midi = paths.replace_extension(src, ".midi")
  _ly_outs(name, src, [outfile_png, outfile_midi])


def _ly_outs(name, src, outs):
  native.genrule(
    name = name,
    srcs=[src],
    outs=outs,
    tools=["@lilypond_archive//:bin/lilypond"],
    cmd="""$(location @lilypond_archive//:bin/lilypond) \
        --png \
        --output=$(RULEDIR) \
        $(location {})
    """.format(src)
  )

