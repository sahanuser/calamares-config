#!/bin/sh

git add .

export PS2="Enter your commit --> "
echo "Commit Message"
read input

git commit -m "$input"
git push
