var WshShell = new ActiveXObject("WScript.Shell");

WshShell.CurrentDirectory = "..";
WshShell.RegWrite("HKCU\\Software\\Classes\\Directory\\shell\\Sublime Text\\", "Open Directory with Sublime Text", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\Directory\\shell\\Sublime Text\\Icon", WshShell.CurrentDirectory + "\\sublime_text.exe", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\Directory\\shell\\Sublime Text\\command\\"
    , WshShell.CurrentDirectory + "\\sublime_text.exe \"%V\"", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\Directory\\Background\\shell\\Sublime Text\\", "Open Sublime Text Here", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\Directory\\Background\\shell\\Sublime Text\\Icon", WshShell.CurrentDirectory + "\\sublime_text.exe", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\Directory\\Background\\shell\\Sublime Text\\command\\"
    , WshShell.CurrentDirectory + "\\sublime_text.exe \"%V\"", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\*\\shell\\Sublime Text\\", "Open With Sublime Text", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\*\\shell\\Sublime Text\\Icon", WshShell.CurrentDirectory + "\\sublime_text.exe", "REG_SZ");
WshShell.RegWrite("HKCU\\Software\\Classes\\*\\shell\\Sublime Text\\command\\"
    , WshShell.CurrentDirectory + "\\sublime_text.exe \"%1\"", "REG_SZ");