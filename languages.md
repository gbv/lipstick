---
menus:
  header:
    weight: 3
---

# Highlighting languages

The purpose of a **syntax highlighting language** or **syntax definition
language** is to detect elements such keywords, variables, strings, and
comments when editing source code. The actual method how to detect these
elements differs among editors so ~~no~~ [several](https://xkcd.com/927/)
syntax definition languages exist. Their expressivity differs from simple
heuristics to full parsing rules with additional features. In most cases the
detection rules consist of a set of **regular expressions**.

This page gives a summary of all relevant highlighting languages I could find.
Coloring schemes that map these elements to specific text layout are not
included.

## [Textmate]

The Textmate [syntax definition language](https://macromates.com/manual/en/language_grammars)
is based on property list format which is serialized in XML. It's file extension
is `.tmLanguage`. Textmate syntax definitions can also be used in other editors
and applications such as Visual Studio Code, IntelliJ, and Github. 

## [Sublime 3]

The Sublime editor supports Textmate syntax definitions and [its own syntax
definition language](https://www.sublimetext.com/docs/3/syntax.html) based on
YAML.

## [Atom]

Syntax definitons for the the Atom editor can be provided as JavaScript
packages that either include a Textmate syntax definitions serialized in JSON
or implement a [TreeSitter] grammar in JavaScript.

[TreeSitter]: https://tree-sitter.github.io/tree-sitter/

## [Pygments]

Syntax definitions for the the Python syntax highligther library are [written
in Python](http://pygments.org/docs/lexerdevelopment/).

## [Rouge]

The Ruby syntax highlighting library is compatible with Pygments but syntax
definitions are [written in Ruby](https://github.com/jneen/rouge#using-the-lexer-dsl).

## [Ace]

Syntax definitons for the Ace editor [are written as
"modes"](https://github.com/ajaxorg/ace/wiki/Creating-or-Extending-an-Edit-Mode)
in JavaScript.

## [vim]

The vim editor allows to define syntax definitions [in its own config file
format](http://vim.wikia.com/wiki/Creating_your_own_syntax_files).

## [emacs]

The emacs editor allows to define syntax definitions in its own config file format (emacs lisp)

## [Kate]

The [Kate syntax highlighting engine](https://github.com/KDE/syntax-highlighting) uses an
[XML based format](https://docs.kde.org/stable5/en/applications/katepart/highlight.html)
for syntax definition. The highlighting engine has also been
[ported to Haskell](https://github.com/jgm/skylighting) for the Pandoc document converter.

## [CodeMirror]

The CodeMirror editor library and its syntax definitions are written in JavaScript.

## [prettify]

The prettify highlighting library and its syntax definitions are written in JavaScript.

## [highlight.js]

The prettify highlighting library and its syntax definitions are written in JavaScript.

## [Eclipse]

The Eclipse editor can be [extended in
Java](https://wiki.eclipse.org/FAQ_How_do_I_provide_syntax_coloring_in_an_editor%3F)
for syntax definitions but plugins exist to reuse syntax definitons from other editors.

## [jedit]

Syntax definitions for jedit are written in an [XML based
language](http://www.jedit.org/users-guide/writing-modes-part.html).

## [UltraEdit]

UltraEdit uses
[a custom file format](https://www.ultraedit.com/downloads/extras/wordfiles.html)
for syntax definitions.

## [Notepad++]

Syntax definitions for Notepad++ [can be defined via its user
interface](http://docs.notepad-plus-plus.org/index.php/User_Defined_Languages)
and exchanged in an XML based format.

## [gedit]

gedit uses an [XML based
format](https://developer.gnome.org/gtksourceview/stable/lang-reference.html)
for syntax definitions.

## [Monaco]

Monaco editor allows to specify syntax definitions in a [JavaScript library
called Monarch](https://microsoft.github.io/monaco-editor/monarch.html).

## [Komodo Edit]

Syntax definitions for Komodo Edit must be specified in Python.

## [NetBeans]

Syntax definitions for NetBeans can be
[specified in Java](http://wiki.netbeans.org/How_to_create_support_for_a_new_language)
with a Lexer, which might be created automatically from a grammar file.

## [BBEdit]

BBEdit can be extended by [custom syntax definitions](https://www.barebones.com/support/develop/clm.html)
based on property list format serialized in XML.

## [Rainbow]

Rainbow is a very simple highlighting library written in Javascript. Custom
syntax definitions are defined in JavaScript by pairs of regular expressions
and matching element names.

### [Prism.js]

Yet another syntax highlighter in JavaScript.

### [micro]

The micro editor uses [a custom YAML based format](https://github.com/zyedidia/micro/blob/master/runtime/help/colors.md#syntax-files) to defined syntax rules.

[micro]: https://micro-editor.github.io/
[Prism.js]: http://prismjs.com/
[Rainbow]: https://craig.is/making/rainbows
[Monaco]: https://microsoft.github.io/monaco-editor/
[BBEdit]: http://www.barebones.com/products/bbedit
[NetBeans]: https://netbeans.apache.org/
[Textmate]: https://macromates.com/
[Sublime 3]: https://www.sublimetext.com/
[Ace]: https://ace.c9.io/
[Atom]: https://atom.io/
[Rouge]: https://github.com/jneen/rouge
[Pygments]: http://pygments.org/
[vim]: https://www.vim.org/
[Kate]: https://kate-editor.org/
[emacs]: https://www.gnu.org/software/emacs/
[prettify]: https://github.com/google/code-prettify
[highlight.js]: https://highlightjs.org/
[CodeMirror]: codemirror/
[jedit]: http://www.jedit.org/
[Ultraedit]: https://www.ultraedit.com/
[Notepad++]: https://notepad-plus-plus.org/
[gedit]: https://projects.gnome.org/gedit/
[Komodo Edit]: http://www.activestate.com/komodo-edit
[Eclipse]: https://www.eclipse.org/
