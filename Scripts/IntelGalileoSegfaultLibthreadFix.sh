#!/bin/bash

echo 'Intel Galileo Seq Faults script fix for quark processor'

for i in `find / -type f -name \*pthread\*so`; do sed -i "s/\xf0\x0f\xb1\x8b/\x90\x0f\xb1\x8b/g" ${i}; done

