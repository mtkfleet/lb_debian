#!/bin/bash -e



./configure

sudo lb build 2>&1 | tee log.txt



