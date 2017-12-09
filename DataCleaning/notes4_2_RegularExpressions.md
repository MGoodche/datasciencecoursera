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
When used at the beginning of a character class, the “^” is also a metacharacter and indicates matching characters NOT in the indicated class
```[javascript]
[^?.]$
```
Used in the beginning of a character class the ^ is also a metacharacter and indicates that it should match any of the characters not in the indicated class. So for example here we're looking at the end of the line with the $. And we're looking for any line that ends in anything other than a period or a question mark. Cuz this means either a period or a question mark, and this caret means that it's not either of those two characters, so it'll match all of these lines, because most of them don't have any punctuation, and some have exclamation points at the end.
