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
You can also combine these techniques together:
```[javascript]
^[Ii] am
```
will match
```[javascript]
i am so angry 

I am so over this. I need food. Mmmm bacon...
```
```[javascript]
^[0-9][a-zA-Z]
```
will match
```[javascript]
7th inning stretch
2nD half soon to begin. OSU did just win something
```
