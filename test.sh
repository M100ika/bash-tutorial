#!/usr/bin/env bash
F="one two"
trap 'ls $F' ERR
F="three four"
false