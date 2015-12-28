#!/bin/sh

cd exercises/ch1
for src in *.rkt; do
    racket ${src}
done
cd ../..

