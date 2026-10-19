$vdesk = "C:\Users\Bingsong Yu\Projects\dotfiles\WindowsAPPs\vdesk.exe"

& $vdesk create 10
& $vdesk run --no-switch --on 10 -w 3000 "$env:LOCALAPPDATA\Programs\todoist\Todoist.exe"
& $vdesk run --no-switch --on 9  -w 3000 "C:\Program Files\Tencent\WeChat\WeChat.exe"
& $vdesk switch 1
