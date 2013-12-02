# Voice commands for chrome

include Unimacro.vch;


zoom in = {Ctrl+plus};
zoom out = {Ctrl+minus};
save = {Ctrl+s};
new = {Ctrl+T};
new window = {Ctrl+n};
next = {Ctrl+tab};
previous = {Ctrl+Shift+tab};
switch tab 0..9 = {Ctrl + $1};
private = {Alt+e} Wait(10){i};
close = {Ctrl+w};
bookmark = {Ctrl+d};
tools = {Alt+e};
reload={f5};
back page={backspace};
(Copy={Ctrl+c} | Paste={Ctrl+v} | Go="") (Address|URL) = {Alt+d} $1;

# Vimium
#address copy = y Wait(10){y};
#address go = {Alt+d};
#link copy <n> = yf$1;


#             save [file] = {Ctrl+s}
#             save [file] as = a-f, a
#             save [file] as <text> = a-f, a/20") + Text("%(text)s
#             find <text> = {Ctrl+f}/20") + Text("%(text)s\n
#            },
