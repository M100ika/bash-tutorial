#!/bin/bash

ping localhost | xargs -n1 -i bash -c 'echo `date +%F\ %T`" {}"' | ccze #[host] Пишем адрес