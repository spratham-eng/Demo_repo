#!/bin/sh
git log --format='%H,%ae,%an,%s' --since="$1 days ago" 
