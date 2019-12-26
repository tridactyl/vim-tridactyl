" Vim syntax file
" Language:   Tridactyl
" Maintainer: Caleb Maclennan <caleb@alerque.com>
" URL:        https://github.com/tridactyl/vim-tridactyl

scriptencoding utf-8

if exists('b:current_syntax')
	finish
endif

syntax include @JS	syntax/javascript.vim

syntax sync maxlines=200
syntax sync minlines=50

" Regenerate from Tridactyl source using:
" :read! sed -n -e "/function.*{/{s/.*function //;s/(.*//;p}" src/excmds.ts | sort -u | xargs
syntax keyword tridactylExCommand		contained
			\ addJump addTridactylEditorClass apropos argParse autocmd autocmddelete
			\ autocontain back bind bindurl blacklistadd bmark bmarks buildFilterConfigs changelistjump
			\ clearsearchhighlight clipboard colourscheme comclear command composite containerclose containercreate
			\ containerdelete containerupdate credits cssparse curJumps echo editor exclaim exclaim_quiet extoptions
			\ fillcmdline fillcmdline_nofocus fillcmdline_notrail fillcmdline_tmp fillinput find findintabs findnext
			\ findRelLink fixamo fixamo_quiet focusbyid focusinput followpage forward fullscreen get getclip getinput
			\ getInput getInputSelector getJumpPageId getNativeVersion getnexttabs getRssLinks getSortedWinTabs
			\ geturlsforlinks gobble guiset guiset_quiet help hidecmdline hint history home idFromIndex issue js jsb
			\ jumpnext jumpprev keyfeed keymap loadaucmds loadtheme mktridactylrc mode mute native nativeinstall
			\ nativeopen neo_mouse_mode no_mouse_mode open open_quiet parse_bind_args perfdump perfhistogram pin qall
			\ quickmark rapid reader reload reloadall reloadallbut reloadhard removepref removeSource
			\ removeTridactylEditorClass repeat reset reseturl restart rot13 rssexec run_exstr sanitise saveas
			\ saveJumps scrollline scrollpage scrollpx scrollto searchsetkeyword selectLast set setclip setpref seturl
			\ shellescape showcmdline sleep snow_mouse_mode source source_quiet tab taball tabclose tabclosealltoleft
			\ tabclosealltoright tabdetach tabduplicate tabIndexSetActive tabmove tabnext tabnext_gt tabonly tabopen
			\ tabprev tabSetActive tssReadFromCss ttscontrol ttsread ttsvoices tutor unbind unbindurl undo unfocus
			\ unloadtheme unset unseturl updatecheck updatenative url2args urlincrement urlmodify urlparent urlroot
			\ validateSetArgs version viewconfig viewcontainers viewsource winclose winopen yank zoom

syntax match tridactylComment		'^".*'		contains=@Spell
syntax match tridactylCommand		"^\h\+"		contains=tridactylExCommand,@NoSpell
syntax match tridactylJSCommand		"\<jsb\?\>"	contains=tridactylExCommand,@NoSpell nextgroup=tridactylJavascript
syntax match tridactylBindCommand	"^bind\>"	contains=tridactylExCommand,@NoSpell nextgroup=tridactylKeySequence

syntax match tridactylKeys			"[^<>-]\+"		contained

syntax region tridactylJavascript	start=" "	end="$"		contained contains=@JS
syntax region tridactylKeySequence	start=" "	end=" "me=s-1	keepend contained contains=tridactylModifiedKeys,tridactylKeys,@NoSpell nextgroup=tridactylAction
syntax region tridactylModifiedKeys	matchgroup=Delimiter start="<"	skip="-" end=">" keepend contained contains=tridactylKeys,@NoSpell nextgroup=tridactylAction
syntax region tridactylAction		start=" "	end=" "		keepend contained contains=tridactylExCommand,@NoSpell

highlight! def link tridactylComment		Comment
highlight! def link tridactylCommand		Function
highlight! def link tridactylAction			Function
highlight! def link tridactylExCommand		Statement
highlight! def link tridactylFlowcontrol	Exception
highlight! def link tridactylKeys			Character

let b:current_syntax = 'tridactyl'
" vim: set noet ts=4 sw=4 sts=4:
