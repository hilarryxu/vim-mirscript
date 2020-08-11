" mirscript syntax file
" Language: mirscript
" Maintainer: Larry Xu
" Last change: 2020/7/20

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn match msComment /\v^;.*$/
syn match msNumber /\v \zs-?\d+>/
syn match msCond /\v^#(IF|ACT|ELSEACT|AutoRun|SAY|CALL|CALLX|ELSESAY|OR)/
syn match msBlockLabel /\v^\[\~?\@.*\]/
syn match msVarShowC contained /\v\<\$[^\>]+\>/
syn match msVarShow /\v\<\$[^\>]+\>/
syn match msVar /\v\<(PlayImg|ItemShow|ImgEx|Img|Looks):[^\>]+\>/
syn match msVar /\v \zs\[\d+\]\ze ?/
syn match msVar /\v \zs(G|A|I|N|S|U|T|M|D|P)\d+>/
syn match msJmpLabel /\v\@[^ ]+$/
syn match msJmpLabel /\v\/\zs\@[^ \>]+\ze\>/
syn match msFilepath /\v\[\\[^\]]+\]/
syn match msFilename /\v \zs[^ []+\.txt>/ contains=msVarShowC

" 基础指令
syn keyword msFunc NOT BREAK CHECK GOTO DELAYGOTO HCALL
syn keyword msFunc MOVR MOV INC MUL DEC DIV SUM EQUAL SMALL LARGE RANDOM SET RESET

" 基本的人物相关命令
syn keyword msFunc InSafezone CheckLevelEx CheckOffline
syn keyword msFunc ChangeLevel HumanHp HumanMp GameGold GameGird

" 自定义变量
syn keyword msFunc Var LoadVar SaveVar CalcVar CheckVar
" 消息框
syn keyword msFunc MessageBox Close OpenBigDialogBox CloseBigDialogBox OpenMerchantBigDlg CloseMerchantBigDlg
" 发消息
syn keyword msFunc SendMsg SendCenterMsg GuildNoticeMsg
" 地图相关
syn keyword msFunc Map MapMove IsOnMap CheckMapName GotoNow AutoGotoXY MapHumIsSameGuild
" 文件目录操作
syn keyword msFunc ForceDirectories CreateFile CheckTextList AddTextListEx CheckContainsText GetStringPos GetRandomText GetListString DelTextList
" 定时器
syn keyword msFunc SetOnTimer SetOffTimer
" 物品操作
syn keyword msFunc CheckItemW CheckItem Give Take AutoTakeOnItem AutoTakeOffItem TakeBagItem
" 技能
syn keyword msFunc CheckSkill AddSkill DelSkill
" 称号
syn keyword msFunc CheckTitle
" 转生
syn keyword msFunc CheckRenewLevel RsetRenewLevel RenewLevel
" 假人
syn keyword msFunc IsDummy DummyStart DummyStop

" 其他
syn keyword msFunc Kick

" 商业版扩展命令
syn keyword msFunc AddButton PickUpItems

hi def link msComment Comment
hi def link msNumber Number
hi def link msCond Constant
hi def link msFunc Keyword
hi def link msBlockLabel Tag
hi def link msVar Identifier
hi def link msVarShow Identifier
hi def link msVarShowC Identifier
hi def link msJmpLabel Float
hi def link msFilepath PreProc
hi def link msFilename String

let b:current_syntax = "mirscript"

" vim: sts=2 sw=2 et
