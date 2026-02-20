#!/usr/bin/env bash
./solver -d de -r ms . ^e ^i . ^t | grep -i ratio && echo "ratio: Test failed (missing the elsewhere-e)"
./solver -d us -r nef ^s ^r o s t | grep -i ghost && echo "ghost: Test failed (missing the elsewhere-r)"
./solver -d de  -r ten ^s . . ^i . | grep -i abgas && echo "abgas: Test failed (missing the elsewhere-i)"
./solver -d us -r ychtzebrio ^a ^ad . . ^as | grep -i flask && echo "flask: Test failed (missing the elsewhere-d)"
./solver -d de -r tenko ^s i ^f ^is ^s | grep -i fisch || echo "fisch: Test failed (is the solution)"

