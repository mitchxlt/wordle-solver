# Mitch's Wordle Solver

```
usage: solver [-h] -d DICT -r REJECT position [position ...]

Solve wordle and derivative puzzles

positional arguments:
  position              Knowledge per position: .=unknown, ^abc=elsewhere (yellow), d=d here (green)

options:
  -h, --help            show this help message and exit
  -d DICT, --dict DICT  Dictionary to use (absolute filename, name in /usr/share/dict, name in ./dicts)
  -r REJECT, --reject REJECT
                        Letters to globally reject
```

* Dictionary search order:
  * Exact path
  * dicts directory next to the binary
  * /usr/share/dict


Todo/Fixme:
* [x] Rename: `solver`
* [x] Pseudo regex
* [ ] make sure "elsewhere" characters appear elsewhere in the word
  * Still not complete, match separately, not as class
* [x] Do *something* about characters that are greyed out because they aren't in the word *twice*
* [x] argparse cleanup
* [x] Dictionary discovery, search in ./dicts, in /usr/share/dicts, absolute filename
* [ ] Note on included dicts, licenses from Debian package
* [ ] Documentation by example
* [ ] Dict for BOFHLE
  * `apt-file search '/usr/share/man' | awk -F[./] '/man[168]/{print $(NF-2)}' | sort -u`  
