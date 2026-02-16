#!/usr/bin/env bash
./solver -d ngerman -r ms . ^e ^i . ^t | grep -i ratio && echo "ratio: Test failed (missing the elsewhere-e)"
./solver -d american-english -r nef ^s ^r o s t | grep -i ghost && echo "ghost: Test failed (missing the elsewhere-r)"
./solver -d ngerman  -r ten ^s . . ^i . | grep -i abgas && echo "abgas: Test failed (missing the elsewhere-i)"
./solver -d ngerman -r tenko ^s i ^f ^is ^s | grep -i fisch && echo "fisch: Test failed (is the solution)"