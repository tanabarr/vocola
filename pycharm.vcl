# Voice commands for pycharm

include Unimacro.vch;
include vim.vch;
include UNIX_shell.vch;

find class = {ctrl+n};
find [(this="ctrl+"|next=|back="shift+")] = When($1,{$1f3},{alt+f3});
#|all=01  )(file|class)
select (next="alt+"|all="ctrl+alt+"|unselect="shift+alt+") = {$1j};
(path find="ctrl+shift+F"|path replace="ctrl+shift+R"|structure find=|structure replace=) = {$1};
charm (
    settings={shift+"-"}|
    run console={shift+"="}|
    manage tasks={ctrl+alt+R}|
    last tool={f12}|
    list tools={alt+Down}|
    run program={shift+f10}|
    action={ctrl+shift+a}
) = $1;
### seems to be pressing alt+shift rather than just alt, configure key mappings? to take this into account

hide (
    all tools={ctrl+shift+f12}
) = $1;

split (
    vertical=s|
    on split all=u|
    tools=t 
) = {shift+$1};

charm Folds (open="="|close="-")    =  {ctrl+shift+$1};
(comment="gc"|expand="+"|collapse="-") line = {ctrl+$1};

#usages
(active="shift+"|window=) close = {ctrl+$1f4};
add item = {alt+insert};
search everywhere = {shift}{shift};
file (recent="alt+e"|open"n") = {ctrl+shift+$1};
navigation window = {alt+home};
project view = {alt+1};
show parameter help = {ctrl+p};
switch tab = {ctrl+tab};
complete = {ctrl+" "};
complete statement = {alt+insert};
intention actions = {alt+enter};
live templates = {ctrl+j};
surround with = {ctrl+alt+t};
hide escape = {shift+esc};
