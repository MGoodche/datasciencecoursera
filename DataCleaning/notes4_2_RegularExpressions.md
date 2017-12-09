### 1) Metacharacters

#### Start of a line
Represent the start of a line "^xxxx"
```[javascript]
^the sentence
```

#### End of a line
Represent the last word in the line "xxxx$"
```[javascript]
morning$
```

#### Character Classes with []

We can list a set of characters we will accept at a given point in the match

```[javascript]
[Mm][Ii][Rr]
```
will match the lines
```[javascript]
Mir is cool
ans MIR is great
but mIr not
```
