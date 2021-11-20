#!/usr/bin/env bash
# www.ElectronicsPub.com
# TinyOS 2.1.2 Configuration Guide
# Here we setup the environment
# variables needed by the tinyos
# make system
echo "Setting up for TinyOS 2.1.2"
export TOSROOT=
export TOSDIR=
export MAKERULES=
TOSROOT="/opt/tinyos-2.1.2"
TOSDIR="$TOSROOT/tos"
CLASSPATH="$CLASSPATH:$TOSROOT/support/sdk/java"
MAKERULES="$TOSROOT/support/make/Makerules"
export TOSROOT
export TOSDIR
export CLASSPATH
export MAKERULES
