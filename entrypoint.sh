#!/bin/sh -l

export PATH="$PATH:/root/.dotnet/tools"

sarif $1

echo "Executed with success."