AnsiToUtf8View = require '../lib/ansi-to-utf8-view'
{WorkspaceView} = require 'atom'

describe "AnsiToUtf8View", ->
  it "has one valid test", ->
    expect("life").toBe "easy"
