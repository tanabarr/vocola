## Voice commands for foxit reader
#
#include Unimacro.vch;
#recent files = {Alt+f}r;
#zoom in [<n>] = c-equals:%(n)d
#zoom out [<n>] = c-hyphen:%(n)d
#zoom [one] hundred = c-1
#zoom [whole | full] page = c-2
#zoom [page] width = c-3
#
#"find <text>":              Key("c-f") + Text("%(text)s")
#+ Key("f3"),
#find next = f3
#
#go to page <int> = c-g") + Text("%(int)d\n
#
#print file = c-p
#print setup = a-f, r
#reading mode = c-H
#previous page = c-pgup
## awkward method of switching between bookmark view and reading
## pane. creates new bookmark, delete it,then can navigate to
## bookmark.when wanting to return to Reading window, create and/or
## focuses start tab. Then switch to tab next (assume is only one tab
#navigation window = c-b, enter, del
#reading window = ca-s/20:2/20
#close navigation window = f4
#next = c-tab
#previous = cs-tab
#close = c-w
#				
