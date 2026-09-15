sed -i "s/ar rvs/\$(AR) rvs/" src/leidenalg/Makefile.win
sed -i "s/ar rvs/\$(AR) rvs/" src/rigraph/Makefile.win

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
