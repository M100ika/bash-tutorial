#!/bin/bash
ping [host] | xargs -n1 -i bash -c 'echo `date +%F\ %T`" {}"' | ccze
