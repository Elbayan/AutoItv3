#include <Date.au3>

FileDelete("C:\work\Script\MK503_Download_Projects\MK503_download_log.txt")

$nCycle = 60


For $i = 1 To $nCycle
   MouseClick( "" , 554, 94, 1, 20 )
   Sleep(10000)
   Send( "{ENTER}" )


   $hFile = FileOpen("C:\work\Script\MK503_Download_Projects\MK503_download_log.txt", 1)

	  If $hFile = -1 Then
		 MsgBox(4096, "Ошибка", "Невозможно открыть файл.")
		 Exit
	  EndIf

   FileWrite($hFile, @YEAR &'.'& @MON &'.'& @MDAY &'-'& @HOUR &':'& @MIN &':'& @SEC &"|"& "Прогон № " & $i & @CRLF)
   FileClose($hFile)
   Sleep(10000)
Next

MsgBox(0, "Цикл завершен", "Количество прогонов = " & $i-1)

