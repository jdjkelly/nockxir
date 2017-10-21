# Nockxir

## What is Nock?

> The Nock VM is a Turing-complete function that maps a cell `{subject formula}` to a noun `product`, where `subject` is the data, `formula` is the code, and `product` is the result.

Urbit, an experimental from-scratch operating system and networking stack, uses Nock as a kind of functional assembly language.

## What is Nockxir?

Nockxir is an Elixir-based Nock interpreter. Instead of the square bracket syntax, we use the native tuple type inside of Elixir - which maintains the semantics, but makes the syntax a little nicer.

## Nock rules

```
?[a b]           0
?a               1
+[a b]           +[a b]
+a               1 + a
=[a a]           0
=[a b]           1
=a               =a

/[1 a]           a
/[2 a b]         a
/[3 a b]         b
/[(a + a) b]     /[2 /[a b]]
/[(a + a + 1) b] /[3 /[a b]]
/a               /a

*[a [b c] d]     [*[a b c] *[a d]]

*[a 0 b]         /[b a]
*[a 1 b]         b
*[a 2 b c]       *[*[a b] *[a c]]
*[a 3 b]         ?*[a b]
*[a 4 b]         +*[a b]
*[a 5 b]         =*[a b]

*[a 6 b c d]     *[a 2 [0 1] 2 [1 c d] [1 0]
                   2 [1 2 3] [1 0] 4 4 b]
*[a 7 b c]       *[a 2 b 1 c]
*[a 8 b c]       *[a 7 [[7 [0 1] b] 0 1] c]
*[a 9 b c]       *[a 7 c 2 [0 1] 0 b]
*[a 10 [b c] d]  *[a 8 c 7 [0 3] d]
*[a 10 b c]      *[a c]

*a               *a
```
