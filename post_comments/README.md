## Why `python:3` docker base image?
For the `post_comments` workflow, I've decided to use the `python:3` docker image from dockerhub.
This image is based off of debian.
Because no system binaries are run other than python, I don't expect any issues with the Ubuntu <-> Debian jump. Being able to skip any `apt` calls speeds up the workflow by a good chunk.

## How to use the split workflow

TODO: Explain

## What's left?

 - Handle permission missing issue in main repository in case "single action" method is used and PR comes from a fork (or just 403'd, maybe we don't need to check forkness)
