---
css: https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.43.0/codemirror.min.css
js: https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.43.0/codemirror.min.js
script:
- marc.js
- codemirror.js
style: codemirror.css
---

# CodeMirror

The CodeMirror mode [marc](marc.js) adds syntax highlighting for MARC and PICA.

<https://codemirror.net/>

## Example

You can edit the following data and see effects on syntax highlighting:

~~~marc
LDR/00-23  *****crm##22*****#a#4500
005        19920902031155.0
008/00-39  870119q18601869xxunnn############rn####d
040	       ##$a[organization code]$c[organization code]

=260  \\$aNew York :$bSingleton Press,$c2001.
=700  1\‡aSmith, Mary.
=008  010226s2001\\\\||||||||||||||\|eng\d

003@    $0123456789
021A    $aDas @Beispiel mit $$-Zeichen
101@    $a23$cPICA
203@/01 $09875
~~~

## Usage

~~~html
<script src='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.43.0/codemirror.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.43.0/codemirror.min.css">
<script src='marc.js'></script>
<script src='codemirror.js'></script>
...
<pre><code class="language-marc">
...put record data here...
</code></pre>
~~~
