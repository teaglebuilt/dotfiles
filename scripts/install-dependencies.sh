#!/bin/sh

while read dependency
do
  echo "Installing $dependency"
  # $dependency | sh
done < dependencies.txt