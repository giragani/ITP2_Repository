WinActivate("Select Folder to Upload")
Sleep(3000)
WinWaitActive("Select Folder to Upload")
Sleep(10000)
ControlSend("Select Folder to Upload","","Edit1","C:\Users\GiriganV\PycharmProjects\CRSITP2\Files\Tiff_Files\DocumentConversion\00101202208CB0223312R")
Sleep(3000)
ControlClick("Select Folder to Upload","Upload","Button1");

