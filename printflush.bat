@ECHO OFF
echo ----------------------------------
echo thucspc@gmail.com
echo ----------------------------------
echo.

echo D?ng l?nh in
echo ------------------------------
net stop spooler
echo.
sc config spooler depend= RPCSS
echo.
echo Xong!


echo Xóa l?nh in
echo -------------------------------------------------
del /Q /F /S "%systemroot%\System32\Spool\Printers\*.*"
echo Done!
echo.

echo Step 3: Problems eliminated! Restarting printer services
echo --------------------------------------------------------
net start spooler
echo Spooler has been restarted!
echo.

echo Step 4: Try printing again.