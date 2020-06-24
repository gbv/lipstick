---
css: https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism.min.css
js: https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/prism.min.js
script:
- prism-pica.js
---

# Prism

The syntax file [`prism-pica.js`](prism-pica.js) contains [Prism](https://prismjs.com/) highlighting rules for PICA+, including title-revision format and PICA path expressions.

## Example

~~~pica
PICA Plain:

003@ $012345X
021A $aEin Buch$hzum Lesen
045B/02 $aSpo 1025$aBID 200

$0$X

Title revsion format:

- 021A $aEin Buch$hzum Lesen
+ 021A $aEin gutes Buch$hzum Lesen

PICA path expressions:

2...[01]
003@$0 /1-
123X $ab$c
~~~

## Usage

See [Prism documentation](https://prismjs.com/#basic-usage) for basic usage. In addition include the PICA highling rules like this:

~~~html
<!DOCTYPE html>
<html>
<head>
...
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism.min.css" />
</head>
<body> 
...
<pre><code class="language-pica">
...
</code></pre>
...
<script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/prism.min.js"></script>
<script src="https://gbv.github.io/lipstick/prism/prism-pica.js"></script>
</body>
</html>
~~~


