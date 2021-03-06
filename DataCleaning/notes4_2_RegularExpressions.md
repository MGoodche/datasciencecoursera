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

#### Dot
Dot means it could be any character. So 
```[javascript]
9.11
```
will match
```[javascript]
its stupid the post 9-11 rules
if any 1 of us did 9/11 we would have been caught in days.
NetBios: scanning ip 203.169.114.66
Front Door 9:11:46 AM
```
In this example, if you search for the term 9.11, what that's gonna look for is any place where it sees a 9, followed by any possible character followed by an 11.

#### Or |
It can be used is to combine two different expressions
Example:
```[javascript]
flood|fire
```
will match
```[javascript]
is firewire like usb on none macs?
the global flood makes sense within the context of the bible
yeah ive had the fire on tonight
... and the floods, hurricanes, killer heatwaves, rednecks, gun nuts, etc.
```
In this example, there are two alternatives. So we'll match all of these lines because there's either fire or flood in every single
line that we see here

#### And ()
Subexpressions are often contained in parentheses to constrain the alternatives

```[javascript]
^([Gg]ood|[Bb]ad)
```
will match
```[javascript]
bad habbit
bad coordination today
good, becuase there is nothing worse than a man in kinky underwear
Badcop, its because people want to use drugs
Good Monday Holiday
Good riddance to Limey
```
In this example, we're looking at the beginning of the line and you have to have either good or bad lowercase or uppercase at the beginning of the line. 

#### Question mark ?
Indicates that the indicated expression is optional

#### Star * and plus + sign
So star means repeat any number of
times including none of the item, and plus means at least one of the item. 
```[javascript]
(.*)
```
In this example I am searching for something between parentheses. And it can be any character repeated any number of times. So that will match everything from something where you have a phrase in between the parentheses to something where you just have parentheses with absolutely nothing in between. 

Example
```[javascript]
[0-9]+ (.*)[0-9]+
```
So for example, here we're looking for at least one number followed by any number of characters followed by at least one number again. So here we see one number followed by some large number of characters followed by another number again.
```[javascript]
working as MP here 720 MP battallion, 42nd birgade
so say 2 or 3 years at colleage and 4 at uni makes us 23 when and if we fin
it went down on several occasions for like, 3 or 4 *days*
Mmmm its time 4 me 2 go 2 bed
```


Reference: https://github.com/rdpeng/courses/blob/master/03_GettingData/04_03_regularExpressionsII/index.md
