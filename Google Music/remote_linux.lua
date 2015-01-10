
local timer = libs.timer;
local keyboard = libs.keyboard;
local utf8 = libs.utf8;
local server = libs.server;
local script = libs.script;

--@help Open Google Music site
actions.open_google_music = function ()
        script.shell(
        "#!/bin/bash",
        "if pgrep -f play.google.com > /dev/null",
        "then",
            ":",
        "else",
            "export DISPLAY=:0",
            "nohup /opt/google/chrome/google-chrome --kiosk 'https://play.google.com/music/' >&/dev/null &",
        "fi"
        );
end

--@help Close Google Music site
actions.close_google_music = function ()
        script.shell(
            "!#/bin/bash",
            "kill $(pgrep -f play.google.com)"
        );
end

local tid = -1;
local title = "";

events.focus = function ()
	tid = timer.interval(actions.update, 500);
end

events.blur = function ()
	timer.cancel(tid);
end

--@help Close
actions.close = function()
	keyboard.stroke("escape");
end

--@help Toggle playback state
actions.play_pause = function()
	keyboard.stroke("space");
end

--@help Previous track
actions.previous = function()
	keyboard.stroke("left");
end

--@help Next track
actions.next = function()
	keyboard.stroke("right");
end

--@help Seek forward
actions.seek_forward = function()
	keyboard.stroke("Lshift", "right");
end

--@help Seek backward
actions.seek_backward = function()
	keyboard.stroke("Lshift", "left");
end

--@help Search
actions.search = function()
	keyboard.stroke("oem_2");
	device.keyboard();
end

--@help Navigate up
actions.up = function()
	keyboard.stroke("up");
end

--@help Navigate down
actions.down = function()
	keyboard.stroke("down");
end

--@help Instant
actions.instant = function()
	keyboard.stroke("I");
	device.keyboard();
end

--@help Toggle shuffle
actions.play_shuffle = function()
	keyboard.stroke("S");
end

--@help Toggle repeat
actions.play_repeat = function()
	keyboard.stroke("R");
end

--@help Select current item
actions.select = function()
	keyboard.stroke("return");
end

--@help Navigate home
actions.home = function()
	keyboard.stroke("H");
end

--@help Lower volume
actions.volume_down = function()
	keyboard.stroke("oem_minus");
end

--@help Raise volume
actions.volume_up = function()
	keyboard.stroke("oem_plus");
end

--@help Increase rating
actions.thumbs_up = function ()
	keyboard.stroke("menu", "oem_plus");
end

--@help Decrease rating
actions.thumbs_down = function ()
	keyboard.stroke("menu", "oem_minus");
end

