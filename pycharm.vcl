# Voice commands for pycharm
include Unimacro.vch;
include vim.vch;
include UNIX_shell.vch;

### seems to be pressing alt+shift rather than just alt, configure key mappings? to take this into account


### frequently used ###
### Navigation ###
go to (
    class = {Ctrl+n}|
    file = {Ctrl+Shift+n}|
    symbol = {Ctrl+Alt+Shift+n}|
    declaration = {Ctrl+b}|
    implementation = {Ctrl+Alt+b}|
    type declaration = {Ctrl+Shift+b}|
    usages = {Ctrl+Alt+F7}|
    action={ctrl+shift+a}
) = {esc} $1;
return from jump = {ctrl+u};
Go to (next=Right|back=Left) tab = {Alt+$1};
symbol preview = {ctrl+y};

quick definition lookup = {Ctrl+Shift+i};
Recent files popup = {Ctrl+shift+e};
File structure popup = {Ctrl+F12};

charm Switch tab [1..9] = When($1, {Ctrl+Tab_$1}, {ctrl+tab});
Show navigation bar = {Alt+Home};
Charm back change = {Ctrl+Shift+Backspace};
Select current file or symbol = {Alt+F1};
Hide window = {Shift+Esc};
    
(tool="shift+"|window=) close = {ctrl+$1f4};
Toggle maximizing editor = {Ctrl+Shift+F12};
project view = {alt+1};

Toggle bookmark = {F11};
Toggle bookmark with mnemonic = {Ctrl+Shift+F11};
Go to numbered bookmark 0..9 = {Ctrl+$1};
Show bookmarks = {Shift+F11};

### Usage Search ###
Find usages = {Alt+f7};
Find usages in file = {Ctrl+F7};
Highlight usages in file = {Ctrl+Shift+F7};
Rename = {Shift+F6};

charm (
    hide tools={ctrl+shift+f12}|
    settings={ctrl+shift+f11}|
    run console={ctrl+shift+f2}|
    manage tasks={ctrl+shift+","}|
    last tool={f12}|
    list tools={alt+Down}|
    run program={shift+f10}|
    split vertical={ctrl+shift+\}|
    split tools={shift+\}
) = $1;

### editing ###
Show possible actions = {Alt+Enter};
complete = {ctrl+" "};
Show error description = {Ctrl+F1};

(comment="/"|expand="+"|collapse="-") line = {ctrl+$1}; #}>(all="shift+"|line) = {ctrl+$2$1};
comment 2..20 lines = Repeat($1, Wait(200) {ctrl+"/"});
surround with = {ctrl+alt+t};
(replace="ctrl+alt+shift+r"|path find="ctrl+shift+F"|path replace="ctrl+shift+R"|structure find=|structure replace=) = {$1};

Select successively increasing code blocks = {Ctrl+w};
Decrease current selection to previous state = {Ctrl+Shift+w};
Select till code block (end="]"|start="[") = {Ctrl+Shift+$1};

Save all = {Ctrl+s};
Inspect file = {Alt+Shift+i};
Optimize imports = {Ctrl+Alt+o};

### end of frequently used ###

### Running ###
Select configuration and run = {Alt+Shift+F10};
Select configuration and debug = {Alt+Shift+F9};
Debug = {Shift+F9};
Run context configuration from editor = {Ctrl+Shift+F10};
Step over = {F8};
Step into = {F7};
Step out = {Shift+F8};
Run to cursor = {Alt+F9};
Evaluate expression = {Alt+F8};
Quick evaluate expression = {Ctrl+Alt+F8};
Resume program = {F9};
Toggle breakpoint = {Ctrl+F8};
View breakpoints = {Ctrl+Shift+F8};


#to super-method/super-class = {Ctrl+u};
Go to (previous=Up|next=Down) method = {Alt+$1};
Move to code block (end="]"|start="[") = {Ctrl+$1};
Type hierarchy = {Ctrl+h};
Method hierarchy = {Ctrl+Shift+h};
Call hierarchy = {Ctrl+Alt+h};
(Next=f2|previous="shift+f2") highlighted error = {$1};
#Edit source / View source = {F4 / Ctrl+Enter};

### Refactoring ###
Safe Delete = {Alt+Delete};
Change Signature = {Ctrl+F6};
Inline = {Ctrl+Alt+n};
Extract (Method=M|Variable=V|Field=F|Constant=C|Parameter=P) = {Ctrl+Alt+$1};

### General ###
Open tool window 0..9 = {Alt+$1};
#Synchronize = {Ctrl+Alt+y};
Add to Favorites = {Alt+Shift+f};
Quick switch current scheme = {Ctrl+"`"};
add item = {alt+insert};
search everywhere = {shift}{shift};
clean compile files = {ctrl+shift+"#"};
#Charm Tab (back=Left|next=Right) = {Ctrl+Alt+$1};

### Editing ###
Complete statement = {Ctrl+Shift+Enter};
Parameter info = {Ctrl+p};
Quick documentation lookup = {Ctrl+q};
External Doc = {Shift+F1};
Generate code = {Alt+Insert};
Override methods = {Ctrl+o};
Reformat code = {Ctrl+Alt+l};
Auto-indent line = {Ctrl+Alt+i};
Copy to clipboard = {Ctrl+c};
Paste from clipboard = {Ctrl+v};
Paste from recent buffers = {Ctrl+Shift+v};
Duplicate current line or selected block = {Ctrl+d};
Smart line split = {Ctrl+Enter};
Toggle case for word at caret or selected block = {Ctrl+Shift+u};

### Search/Replace ###
find [(this="ctrl+"|next=|back="shift+")] = When($1,{$1f3},{alt+f3});
select (next="alt+"|all="ctrl+alt+"|unselect="shift+alt+") = {$1j};

### VCS/Local History
Commit project to VCS = {Ctrl+k};
Update project from VCS = {Ctrl+t};
View recent changes = {Alt+Shift+c};
quick popup = {Alt+"`"}; #BackQuote (`)  ‘VCS’ quick popup

### +Live Templates+ i##
Surround with Live Template = {Ctrl+Alt+j};
Insert Live Template = {Ctrl+j};
