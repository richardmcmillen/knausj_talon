os: mac
app.bundle: com.omnigroup.OmniFocus3.MacAppStore
-
action [<phrase>]:
	# Quick Entry (keyboard shortcut is customizable)
	key(ctrl-alt-o)
	insert(user.formatted_text(phrase or "", "CAPITALIZE_FIRST_WORD"))

action first:
	key(home)
	user.omnifocus_select_tree("first tree's first descendant tree")
	# work around OmniFocus bug?
	sleep(100ms)
	key(home)

tree first:
	key(home)
	user.omnifocus_select_tree("item 1 of trees")
	# work around OmniFocus bug?
	sleep(100ms)
	key(home)

action previous: key(cmd-alt-2 cmd-. up)
action next: key(cmd-alt-2 cmd-. down)

action (last | lost | lust):
	key(end)
	user.omnifocus_select_tree("last tree's last descendant tree")

open [<phrase>]:
	key(cmd-o)
	insert(user.formatted_text(phrase or "", "ALL_LOWERCASE,NO_SPACES"))

edit: key(cmd-')
view: key(cmd-alt-')

project [<phrase>]:
	key(cmd-alt-2 cmd-. tab:2)
	insert(user.formatted_text(phrase or "", "ALL_LOWERCASE,NO_SPACES"))
defer: key(cmd-alt-2 cmd-. tab:3)
due: key(cmd-alt-2 cmd-. tab:4)

move up: key(cmd-alt-2 cmd-. ctrl-cmd-up)
move down: key(cmd-alt-2 cmd-. ctrl-cmd-down)
move right: key(cmd-alt-2 cmd-. ctrl-cmd-right)
move left: key(cmd-alt-2 cmd-. ctrl-cmd-left)

go in box: key(cmd-1)
go projects: key(cmd-2)
go tags: key(cmd-3)	
go forecast: key(cmd-4)

done: user.omnifocus_complete()
skip: key(alt-space)
clean up: key(cmd-k)

# Using plugins from https://github.com/nriley/OmniFocus-Plug-Ins

due today: key(ctrl-cmd-t)
due tomorrow: key(ctrl-cmd-m)
due this weekend: key(ctrl-cmd-w)

postpone [by] <number_small> days:
	user.omnifocus_postpone(number_small)

postpone: key(ctrl-cmd-l)

clear dates: key(ctrl-cmd-\)