# Voice commands for pycharm
include Unimacro.vch;
include vim.vch;
include UNIX_shell.vch;

### seems to be pressing alt+shift rather than just alt, configure key mappings? to take this into account

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

### Navigation ###
Go to class = {Ctrl+n};
Go to file = {Ctrl+Shift+N};
Go to symbol = {Ctrl+Alt+Shift+N};
Go to (next=Right|previous=Left) editor tab = {Alt+$1};
Hide window = {Shift+Esc};
Recent files popup = {Ctrl+E};
Charm Tab (back=Left|next=Right) = {Ctrl+Alt+$1};
Charm back change = {Ctrl+Shift+Backspace};
Select current file or symbol = {Alt+F1};
Go to declaration = {Ctrl+B};
Go to implementation = {Ctrl+Alt+B};
Open quick definition lookup = {Ctrl+Shift+I};
Go to type declaration = {Ctrl+Shift+B};
#Go to super-method/super-class = {Ctrl+U};
Go to (previous=Up|next=Down) method = {Alt+$1};
Move to code block (end="]"|start="[") = {Ctrl+$1};
File structure popup = {Ctrl+F12};
Type hierarchy = {Ctrl+H};
Method hierarchy = {Ctrl+Shift+H};
Call hierarchy = {Ctrl+Alt+H};
(Next=f2|previous="shift+f2") highlighted error = {$1};
#Edit source / View source = {F4 / Ctrl+Enter};
Show navigation bar = {Alt+Home};
Toggle bookmark = {F11};
Toggle bookmark with mnemonic = {Ctrl+Shift+F11};
Go to numbered bookmark 0..9 = {Ctrl+$1};
Show bookmarks = {Shift+F11};

### Usage Search ###
Find usages = {Alt+f7};
Find usages in file = {Ctrl+F7};
Highlight usages in file = {Ctrl+Shift+F7};
Show usages = {Ctrl+Alt+F7};

### Refactoring ###
Safe Delete = {Alt+Delete};
Rename = {Shift+F6};
Change Signature = {Ctrl+F6};
Inline = {Ctrl+Alt+N};
Extract (Method=M|Variable=V|Field=F|Constant=C|Parameter=P) = {Ctrl+Alt+$1};

### General ###
Open tool window 0..9 = {Alt+$1};
Save all = {Ctrl+S};
#Synchronize = {Ctrl+Alt+Y};
Toggle maximizing editor = {Ctrl+Shift+F12};
Add to Favorites = {Alt+Shift+F};
Inspect current file = {Alt+Shift+I};
Quick switch current scheme = {Ctrl+"`"};
charm (
    hide tools={ctrl+shift+f12}|
    settings={ctrl+shift+f11}|
    run console={ctrl+shift+f2}|
    manage tasks={ctrl+shift+","}|
    last tool={f12}|
    list tools={alt+Down}|
    run program={shift+f10}|
    split vertical={ctrl+shift+\}|
    split tools={shift+\}| 
    action={ctrl+shift+a}
) = $1;
add item = {alt+insert};
search everywhere = {shift}{shift};
project view = {alt+1};
surround with = {ctrl+alt+t};
charm Switch tab 1..9 = Repeat($1, {Ctrl+Tab});
clean compile files = {ctrl+shift+"#"};

### Editing ###
complete = {ctrl+" "};
Complete statement = {Ctrl+Shift+Enter};
Parameter info = {Ctrl+P};
Quick documentation lookup = {Ctrl+Q};
External Doc = {Shift+F1};
Show error at caret = {Ctrl+F1};
Generate code = {Alt+Insert};
Override methods = {Ctrl+O};
Surround with = {Ctrl+Alt+T};
Select successively increasing code blocks = {Ctrl+W};
Decrease current selection to previous state = {Ctrl+Shift+W};
Select till code block (end="]"|start="[") = {Ctrl+Shift+$1};
Show intention actions = {Alt+Enter};
Reformat code = {Ctrl+Alt+L};
Optimize imports = {Ctrl+Alt+O};
Auto-indent line = {Ctrl+Alt+I};
Copy to clipboard = {Ctrl+C};
Paste from clipboard = {Ctrl+V};
Paste from recent buffers = {Ctrl+Shift+V};
Duplicate current line or selected block = {Ctrl+D};
Smart line split = {Ctrl+Enter};
Toggle case for word at caret or selected block = {Ctrl+Shift+U};
(comment="/"|expand="+"|collapse="-") (all=shift|line) = {ctrl+$1};
(active="shift+"|window=) close = {ctrl+$1f4};

### Search/Replace ###
find class = {ctrl+n};
find [(this="ctrl+"|next=|back="shift+")] = When($1,{$1f3},{alt+f3});
select (next="alt+"|all="ctrl+alt+"|unselect="shift+alt+") = {$1j};
(replace="ctrl+r"|path find="ctrl+shift+F"|path replace="ctrl+shift+R"|structure find=|structure replace=) = {$1};

### VCS/Local History
Commit project to VCS = {Ctrl+K};
Update project from VCS = {Ctrl+T};
View recent changes = {Alt+Shift+C};
quick popup = {Alt+"`"}; #BackQuote (`)  ‘VCS’ quick popup

### +Live Templates+ i##
Surround with Live Template = {Ctrl+Alt+J};
Insert Live Template = {Ctrl+J};
