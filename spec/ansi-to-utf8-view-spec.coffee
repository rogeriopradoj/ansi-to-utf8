ansiToUtf8View = require '../lib/ansi-to-utf8-view'
{WorkspaceView} = require 'atom'

describe "ansiToUtf8View", ->
  it "has one valid test", ->
    expect("life").toBe "easy"
