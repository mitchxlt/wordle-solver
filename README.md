# Mitch's Wordle Solver

```
usage: solver [-h] -d DICT -r REJECT position [position ...]

Solve wordle and derivative puzzles

positional arguments:
  position              Knowledge per position: .=unknown, ^abc=elsewhere, d=d here

options:
  -h, --help            show this help message and exit
  -d DICT, --dict DICT  Dictionary to use
  -r REJECT, --reject REJECT
                        Letters to globally reject
```

Todo/Fixme:
* [x] Rename: `solver`
* [x] Pseudo regex
* [x] make sure "elsewhere" characters appear elsewhere in the word
* [x] Do *something* about characters that are greyed out because they aren't in the word *twice*
* [x] argparse cleanup
  * [x] `required=True`
  * [x] `help='Knowledge per position: .=unknown, ^abc=none of these, x=exactly this'`
* [ ] Dictionary discovery, search in ./dicts, in /usr/share/dicts, absolute filename
* [ ] Note on included dicts, licenses from Debian package
* [ ] Documentation by example
* [ ] Dict for BOFHLE
  * `apt-file search '/usr/share/man' | awk -F[./] '/man[168]/{print $(NF-2)}' | sort -u`  
