
SubAtom = require 'sub-atom'

module.exports = CommentDown =

  activate: (state) ->
    @subs = new SubAtom

    @subs.add atom.commands.add 'atom-workspace atom-text-editor'
    , 'editor:toggle-line-comments': => 
      editor = atom.workspace.getActiveTextEditor()
      editor.moveDown()
      editor.moveToBeginningOfLine()
      
  deactivate: ->
    @subs.dispose()
