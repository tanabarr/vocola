# Voice commands for spotify

include Unimacro.vch;

Search bar		= {Ctrl+l};
Search for <_anything>	= {Ctrl+l} $1 {Enter};
#fullscreen = {Alt+v}f;
<forward_back> := (forward="Right" | back="Left");

<forward_back> track = When($1, {Ctrl+$1}, {Ctrl+Right});
(play | pause) =  " ";
volume (Up | Down) = {Ctrl+$1};
