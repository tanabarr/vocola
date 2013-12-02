# Voice commands for mintty
package install = "apt-cyg install ";
package remove = "apt-cyg remove ";


include Unimacro.vch;

# Voice commands for putty

# screen

screen next = {Ctrl + a} {n};
screen prev = {Ctrl + a} {p};
screen 0..9 = {Ctrl + a} {$};
#screen detach = {Ctrl + T} {d};
#screen attach = "tmux attach {enter}";
#screen reattach = "tmux attach -d {enter}";

# symbols

slap = {enter};
back = {backspace};
hat = "^";
clam = "!";
lat = "@";
numb = "#";
lace = "{";
race = "}";
score = "_";
eke = "=";
dall = "$";
pipe = "|";
laip = "(";
rye = ")";


# cursor commands


# letters, shorttalk

Alpha = "a";
bravo = "b";
Charlie = "c";
Delta = "d";
echo = "e";
foxtrot = "f";
golf = "g";
Hotel = "h";
India = "i";
Juliet = "j";
kilo = "k";
Lima = "l";
Mike = "m";
November = "n";
Oscar = "o";
Poppa = "p";
Québec = "q";
Romeo = "r";
Sierra = "s";
tango = "t";
uniform = "u";
Victor = "v";
whiskey = "w";
x-ray = "x";
Yankee = "y";
Zulu = "z";
nowrap = "{Esc}:set nowrap{enter}";
double backslash = "\/\/";
double dot slash = "../";
