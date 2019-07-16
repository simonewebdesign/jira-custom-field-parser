# Parser

Nothing interesting here, just a CLI to parse some custom string format.

## Installation

Compile the thing to a binary using `mix escript.build`, or just use the one in the `bin/` folder.

## Usage

Call the executable like:

```
./parser "<input>"
```

## Dev Notes

  1_*:     *_1_*:  *_17036_*|
*_3_*:     *_1_*:  *_5495_*|
*_4_*:     *_1_*:  *_104123046_*|
*_5_*:     *_1_*:  *_0_*|
*_10100_*: *_1_*:  *_68122300_*|
*_10600_*: *_1_*:  *_167075863_*|
*_10995_*: *_1_*:  *_13349942_*|
*_10500_*: *_1_*:  *_1386191



312 5345344
13213 345345346
2423234 45456645
345435 456456645


SEP1 = _*:*_
SEP2 = _*|*_


1_*:*_1_*:*_17036_*|*_3_*:*_1_*:*_5495_*|*_4_*:*_1_*:*_104123046_*|*_5_*:*_1_*:*_0_*|*_10100_*:*_1_*:*_68122300_*|*_10600_*:*_1_*:*_167075863_*|*_10995_*:*_1_*:*_13349942_*|*_10500_*:*_1_*:*_1386191


The field stores all statuses an issue’s ever been in.
They are separated by {{\_\\|\\_}}.
For each status we store the status id, number of times in status and time in seconds in that status
Those fields are separated by {{\_\:\\_}}

so for example: 1_:1:428390000|6:2:3099699000|5:1:_345594000

Means the following:

We were in status with id 1, 1 times for 428390000 seconds
We were in status with id 6, 2 times for 3099699000 seconds
We were in status with id 5, 1 times for 345594000 seconds

id: 23123

1: 1: 17036
3: 1: 5495
4: 1: 104123046
5: 1: 0
10100: 1: 68122300
10600: 1: 167075863
10995: 1: 13349942
10500: 1: 1386191
