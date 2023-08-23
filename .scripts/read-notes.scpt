#!/usr/bin/osascript

tell application "Notes"
  repeat with theNote in notes
    log "---"

    log ("id: " & id of theNote)
    log ("name: " & name of theNote)

    log "body: |+"
    set rawBody to body of theNote
    set bodyParagraphs to paragraphs of rawBody
    repeat with para in bodyParagraphs
      log ("  " & para)
    end repeat
  end repeat
end tell
