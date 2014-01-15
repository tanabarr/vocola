# Voice commands for firefox

include Unimacro.vch;

<n> := 0..9;
zoom in = {Ctrl+plus};
zoom out = {Ctrl+minus};
save = {Ctrl+s};
new = {Ctrl+t};
#last = {Ctrl+T};
new window = {Ctrl+n};
next <n> = Repeat($1,  {Ctrl+tab});
previous <n> = Repeat($1,  {Ctrl+Shift+tab});
switch tab <n> = {Ctrl + $1};
private = {Ctrl+Shift+p};
#private = {Alt+e} Wait(10){i};
close = {Ctrl+w};
bookmark = {Ctrl+d};
show bookmarks = {Ctrl+Shift+b};
tools = {Alt+e};
options = {Alt+t} Wait(100){o};
reload={f5};
back page={backspace};
(Copy={Ctrl+c} | Paste={Ctrl+v} | Go="") (Address|URL) = {Alt+d} Wait(200) $1;
## Vimium
#text box = {Esc}gi;
#show links = {Esc}f;
##address copy = y Wait(10){y};
##address go = {Alt+d};
#copy links = {Esc}yf;


#             save [file] = {Ctrl+s}
#             save [file] as = a-f, a
#             save [file] as <text> = a-f, a/20") + Text("%(text)s
#             find <text> = {Ctrl+f}/20") + Text("%(text)s\n
#            },

# Add torrent for download on web UI
#<local_remote> := (local="192.168.1.194:8112" | remote="");
#add deluge torrent <local_remote> = <Ctrl+t> Wait(1000) $1 Wait(100) "siemens{enter}";
#add deluge torrent  = <Ctrl+t>; #/Wait(1000) $1 Wait(100) "siemens{enter}";
