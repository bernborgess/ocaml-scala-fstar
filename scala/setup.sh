#!/bin/bash

# Install Scala with the Scala Installer
curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup

# Install Scala3
cs setup

# Run Scala 2 by default
#cs install scala:2.13.15 scalac:2.13.15


