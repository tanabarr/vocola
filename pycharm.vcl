# Voice commands for pycharm

include Unimacro.vch;

find [(this="ctrl+"|next=|back="shift+")] = When($1,{$1f3},{alt+f3});
#|all=01  )(file|class)
select (next="alt+"|all="ctrl+alt+"|unselect="shift+alt+") = {$1j};
(path find=|path replace=|structure find=|structure replace=) = {$1};
#usages
idea window close = {ctrl+f4};
add item = {alt+insert};
