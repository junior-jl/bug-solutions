#!/bin/bash

# Using Firefox (mostly on Whatsapp Web), letters with accents were erased. The following command solved it.
# Ubuntu 22.04
# Firefox 112.0.2 (64-bit)

sudo sh -c 'echo "GTK_IM_MODULE=xim" >> /etc/environment'
