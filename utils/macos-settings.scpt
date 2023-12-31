tell application "System Events"
    tell dock preferences
        delay 2  -- Delays are sometimes necessary for reliability
        if not (exists dock item "Google Chrome") then
            add application "Google Chrome" at end
        end if
        if not (exists dock item "Todoist") then
            add application "Todoist" at end
        end if
    end tell
end tell
