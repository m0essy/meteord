#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential g++ python git
apt-get install -y --no-install-recommends install libreoffice