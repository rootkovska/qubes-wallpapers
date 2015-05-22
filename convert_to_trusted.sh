#!/bin/sh

for f in *.jpg; do
    new=$(basename "$f" .jpg).trusted.jpg
    old=$f.orig
    echo "Converting: $f -> $new"
    qvm-convert-img "$f" "$new"
    mv "$f" "$old"
    mv "$new" "$f"
done
