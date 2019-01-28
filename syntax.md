---
menus:
  header:
    weight: 2
---

# Syntax elements

## Basic structure

The basic structure of [all record formats](formats.md) can be simplified as this:

* a record consists of a list of **fields**, separated by **field separator**

* a field is either a **fixed field** or a **variable field**

* there is a special fixed field of a record called **leader**

* a fixed fields consists of a **tag**, followed by a sequence of characters as **field value**

* a variable field consists of
  * a **tag**
  * two **indicators** (MARC) or an optional **occurrence** (PICA)
  * a list of **subfields**

* a subfield consists of
  * a **subfield separator**
  * a **subfield code**
  * a non-empty sequence of characters as **subfield value**

Format variants mainly differ in their separators, for instance binary ISO MARC
used byte codes `0x1D`, `0x1D`, and `0x1F` to separate records, fields, and
subfield separators respectively.

### Data elements

Syntax highlighting is limited to readable format variants, for this reason we
assume that **each field is one line**.

A MARC tag is either the leader tag `LDR` or three digits. A PIC tag is three
digits, the first beeing 0, 1, or 3, followed by an uppercase ASCII letter or
`@`.

MARC tags can be prepended by `=` (MARCMaker format)

MARC tags of fixed fields can be followed by a length consisting of `/` and two
positions separated by `-`. A position consists of two digits (this extension
is found in MARC examples).

An indicator is a an ASCII alphabetic or numeric character, or blank. Blank
indicators can be shown as `#`, `_` or a single space.

An occurrence is two or three digits, prepended with `/`

A subfield separator is `$` or `‡` but these characters should not be mixed in
one field. The character can be escaped in subfield values by duplication (`$$`
or `‡‡`).

A subfield code is a single character.

Additional whitespace should be allowed for readability.


