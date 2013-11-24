#!/usr/bin/env python

import os
import subprocess

# cd $HERE
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# cd ./live-build
os.chdir("./live-build")

# run lb clean
ret = subprocess.call(["lb", "clean"])
if ret == 1:
    raise Exception("failure running 'lb clean'!")

# run lb config
ret = subprocess.call(["lb", "config"])
if ret == 1:
    raise Exception("failure running 'lb config'!")

# run lb build
ret = subprocess.call(["lb", "build"])
if ret == 1:
    raise Exception("failure running 'lb build'!")

print "image built at ./live-build/binary.hybrid.iso"
