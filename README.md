# LispReader for Pharo [![Build Status][travis_b]][travis_url]

A [Lisp reader](http://www.lispworks.com/documentation/HyperSpec/Body/02_b.htm) implementation for Pharo Smalltalk. It converts string representations of Common Lisp's symbolic expressions into Smalltalk objects.

The implentation is based on a subset of Stéphane Rollandin's
[LispKit](http://map.squeak.org/package/656e63b6-3322-45cf-8e0a-97b2a3ce20ac/default)
for [Squeak](http://www.squeak.org).

## Requires

* [Pharo](http://pharo.org/) 7.0,6.1

## Installing

To install the latest version execute the following:

```Smalltalk
Metacello new
  baseline: 'LispReader';
  repository: 'github://charcodelimit/lispreader-smalltalk/repository-pharo';
  load.
```

## How to use

Many of the sharpsign reader macros are supported, including: bit vectors, references, and rationals in arbitrary radix.
The sharpsign macros for evaluation, arrays, structures and pathnames are not
supported.

```Smalltalk
| reader stream expression |
reader := LRReader for: LRLispKernel new.
stream := ReadStream on: '((#*101010 #o37/15) . (#2=(p q) #:|foo| #2# . (bar nil)))'
expression := reader read: stream.
```

The code creates a corresponding `ConsCell` object containing Smalltalk `Symbol`,
`Rational`, `String`, `UndefinedObject` and `RBBitVector` objects.

## License

LispReader for Pharo is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).


[travis_b]: https://travis-ci.org/charcodelimit/lispreader-smalltalk.svg?branch=master
[travis_url]: https://travis-ci.org/charcodelimit/lispreader-smalltalk
