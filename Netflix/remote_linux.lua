local keyboard = libs.keyboard;
local script = libs.script;

--@help Open Netflix site
actions.open_netflix = function ()
	script.shell(
        "#!/bin/bash",
        "if pgrep -f netflix.com > /dev/null",
        "then",
            ":",
        "else",
            "export $(cat /proc/$(pidof gnome-shell)/environ | tr '\0' '\n' | grep '^DISPLAY=')",
            "nohup /opt/google/chrome/google-chrome --kiosk 'https://www.netflix.com/SwitchProfile?tkn=6AOIYFY5QZHNHLDALVVVE4E7FU' >&/dev/null &",
        "fi"
        );
end

--@help Close Netflix site
actions.close_netflix = function ()
        script.shell(
            "!#/bin/bash",
            "kill $(pgrep -f netflix.com)"
        );
end

--@help Lower volume
actions.volume_down = function()
	keyboard.stroke("down");
end

--@help Mute volume
actions.volume_mute = function()
	keyboard.stroke("M");
end

--@help Raise volume
actions.volume_up = function()
	keyboard.stroke("up");
end

--@help Pause playback
actions.pause = function()
	keyboard.stroke("next");
end

--@help Toggle playback state
actions.play_pause = function()
	keyboard.stroke("return");
end

--@help Navigate left
actions.left = function()
	keyboard.stroke("left");
end

--@help Select current item
actions.select = function()
	keyboard.stroke("return");
end

--@help Navigate right
actions.right = function()
	keyboard.stroke("right");
end

--@help Seek forward
actions.forward = function()
	if (OS_OSX) then
		keyboard.stroke("cmd", "right");
	else
		keyboard.stroke("control", "right");
	end
end

--@help Seek backward
actions.rewind = function()
	if (OS_OSX) then
		keyboard.stroke("cmd", "left");
	else
		keyboard.stroke("control", "left");
	end
end

--@help Fullscreen view
actions.fullscreen = function()
	keyboard.stroke("F");
end

--@help Windowed view
actions.window = function()
	keyboard.stroke("escape");
end

