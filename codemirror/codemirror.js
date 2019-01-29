Array.from(document.getElementsByClassName('language-marc'))
  .forEach(function(code) {
    CodeMirror(function(editor) {
      code.parentNode.replaceChild(editor, code);
    }, {
      value: code.textContent,
      mode: 'marc'
    })
  })
