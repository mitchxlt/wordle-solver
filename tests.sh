#!/usr/bin/env bash
./solver -d ngerman -r ms . ^e ^i . ^t | grep -i ratio && echo "ratio: Test failed (missing the elsewhere-e)"
./solver -d american-english -r nef ^s ^r o s t | grep -i ghost && echo "ghost: Test failed (missing the elsewhere-r)"