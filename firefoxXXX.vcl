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
#aadd deluge torrent <local_remote> = <Ctrl+t> Wait(1000) $1 Wait(100) "siemens{enter}";
## 
## Clicking links/gizmos:
## 

# 
# These commands require the mouseless browsing extension.
# 
# Plug-in configuration:
# 
# General->not execute automatically without pressing enter
# ID-types->all modifiers = Ctrl+alt
## Keys->Postfix key to open link in new tab = MULTIPLY (press num pad star)
# Keys->blur active element = ctrl+DIVIDE 
# (press control num pad slash)
#
# Also, remove Dragon's use of MULTIPLY and DIVIDE
# 

Blur() := {ctrl+NumKey/};
Toggle() := {NumKey.};

<pick> := ( pick = {shift}{enter} 
| drop pick = {shift}{enter}{alt+down}
| go pick = {shift}
| push pick = {shift}{ctrl+enter} # stay but open new tab w/ link
| tab pick = {shift}{ctrl+shift+enter}
| window pick = {shift}{shift+enter}
| menu pick = {shift}{shift+f10}
| save pick = {shift}{shift+f10} Wait(100) k
| copy pick = {shift}{shift+f10} Wait(100) a # copy URL of link
);

<pick> 0..9 = Blur() {alt+ctrl+$2} $1;
<pick> 0..9 0..9 = Blur() {alt+ctrl+$2}{alt+ctrl+$3} $1;
<pick> 0..9 0..9 0..9 = Blur() {alt+ctrl+$2}{alt+ctrl+$3}{alt+ctrl+$4} $1;
<pick> 0..9 0..9 0..9 0..9 = Blur() {alt+ctrl+$2}{alt+ctrl+$3}{alt+ctrl+$4}
{alt+ctrl+$5} $1;

show numbers = Blur() Toggle();
refresh numbers = Blur() Toggle() Toggle();
blur me = {ctrl+NumKey/};


# 
# These commands use the built-in quick find link:
# 

link <_anything> = Blur() "'$1" {enter};
new link <_anything> = Blur() "'$1" {ctrl+enter};
window link <_anything> = Blur() "'$1" {shift+enter};
#add deluge torrent  = <Ctrl+t>; #/Wait(1000) $1 Wait(100) "siemens{enter}";
