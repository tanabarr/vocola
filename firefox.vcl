# Voice commands for firefox
close = {ctrl+w};
reload = {ctrl+f5};
firebug = {f12};

remove [all] cookies = {ctrl+shift+o};

<n> := 0..9;
zoom (in=plus | out=minus) [<n>] = 
    When($2, Repeat($2, {Ctrl+$1} Wait(100)), Repeat(1, {Ctrl+$1} Wait(100)));
save = {Ctrl+s};
new tab = {Ctrl+t};
last = {Ctrl+T};
new window = {Ctrl+n};
next <n> = Repeat($1,  {Ctrl+tab});
previous <n> = Repeat($1,  {Ctrl+Shift+tab});
close = {Ctrl+w};
bookmark = {Ctrl+d};
reload={f5};
back page={backspace};
(Copy={Ctrl+c} | Paste={Ctrl+v} | Go="") (Address|URL) = {Alt+d} Wait(20) $1;
clear cash = {ctrl+shift+del};
