Introduction
============

A tool to convert movie using ffmpeg.

Supported ffmpeg version
------------------------

* ffmpeg 2.3

Usage
=====

Convert a movie file to an iPhone compatible movie file
-------------------------------------------------------

```sh
$ video-convert --output=output.m4v input.vob
```

If an input file and the output flag are given, the video-convert command converts the input file and outputs its result to the output.

Show streams
------------

```sh
$ video-convert input.vob
```

If the output flag is not specified, the video-convert command shows the list of streams.

Show late streams
-----------------

```sh
$ video-convert --probesize=100
```

The probesize flag expands the size of blocks to probe.
The default size is 1, and the value multiplies the value.

Show subtitles
--------------

```sh
$ video-convert --subtitle=4 --output=output.m4v input.vob
```

The subtitle flag makes the command overlay the subtitle stream specified with the flag to a video stream.

Deinterlace
-----------

```sh
$ video-convert --deinterlace
```

The deinterlace flag makes the command use a deinterlace filter.
