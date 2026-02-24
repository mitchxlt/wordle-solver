# Mitch's Wordle Solver

## Synopsis

```
usage: solver [-h] -d DICT [-r REJECT] [-W] position [position ...]

Solve wordle and derivative puzzles

positional arguments:
  position              Knowledge per position: .=unknown, ^abc=elsewhere (yellow), d=d here (green)

options:
  -h, --help            show this help message and exit
  -d DICT, --dict DICT  Dictionary to use (absolute filename, name in /usr/share/dict, name in ./dicts)
  -r REJECT, --reject REJECT
                        Letters to globally reject
  -W, --nonword         Allow non-word characters (dash, apostrophe etc.)
```

## Dictionaries

* Dictionary search order:
  * Exact path
  * `dicts` directory next to the binary
  * `/usr/share/dict`
* Included dictionaries sourced from:
  * **us** - The Debian *wamerican* package
    * http://wordlist.sourceforge.net/
    * Misc. BSD-style licences
  * **de** - The Debian *wngerman* package
    * http://wordlist.sourceforge.net/
    * Misc. GPL, LGPL and BSD-style licenses
* The **man** dictionary was generated on Debian Linux as follows:
  * `apt-file search '/usr/share/man' | awk -F[./] '/man[168]/{print $(NF-2)}' | sort -u`  

## Example

### Step 1

* Pick any 5 letter word for the first guess

`./solver --dict us . . . . . | shuf`

![image](screenshots/drawn1.png)

### Step 2

* Reject S, T, O and E globally
* Reject N only on position 4

`./solver --dict us --reject stoe . . . ^n .`

![image](screenshots/drawn2.png)

### Step 3

* Reject M, I and C globally
* Reject A on position 2 and N on position 3

`./solver --dict us --reject stoemic . ^a ^n ^n .`

![image](screenshots/drawn3.png)

### Step 4

* Reject U and B globally
* Reject A on position 4
* Confirm R for position 2 and N for position 5

`./solver --dict us --reject stoemicub . r ^n ^na n`

![image](screenshots/drawn4.png)

### Step 5

* Reject P globally
* Confirm R, A, W and N for the last 4 positions

`./solver --dict us --reject stoemicubp . r a w n`

![image](screenshots/drawn5.png)

## License and disclaimer

The `solver` script is marked CC0 1.0. To view a copy of this mark, visit https://creativecommons.org/publicdomain/zero/1.0/

## Special thanks

https://hellowordl.net for providing random wordles and wordles of arbitrary length.
