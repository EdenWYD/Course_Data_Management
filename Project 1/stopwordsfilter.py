#!/usr/bin/env python

"""
A filter that _________.
"""

import fileinput


def process(line):
    """For each line of input, if it contains stop words, remove it."""
    line = line[:-1]
    with open('stopwords.txt') as file:
        content = file.read()
        if line in content:
            exit
        else:
            print(line)


for line in fileinput.input():
    process(line)
