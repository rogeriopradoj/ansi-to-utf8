fs    = require 'fs'
iconv = require 'iconv-lite'

module.exports =

  activate: (state) ->
    atom.commands.add 'atom-workspace', "ansi-to-utf8:win1252", =>    @open 'win1252'
    atom.commands.add 'atom-workspace', "ansi-to-utf8:utf-8", =>      @open 'utf-8'

  deactivate: ->
    #@ansiToUtf8View.destroy()

  serialize: ->
    #ansiToUtf8ViewState: @ansiToUtf8View.serialize()

  open: (encoding) ->
    workspace = atom.workspace
    editor = workspace.getActiveTextEditor()
    path = editor.getPath()
    buffer = fs.readFileSync(path)
    convertedText = iconv.decode buffer, encoding
    editor.setText convertedText
    # atom.workspace.saveActivePaneItem()

  save: (encoding) ->
    workspace = atom.workspace
    editor = workspace.getActiveTextEditor()
    path = editor.getPath()
    buffer = fs.readFileSync(path)
    data = buffer.toString 'UTF8'
    buf = iconv.encode data, encoding
    fs.writeFileSync( uri, buf )
