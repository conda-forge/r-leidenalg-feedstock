sed -i "s/^\([[:space:]]*\)ar rvs/\1\$(AR) rvs/" src/leidenalg/Makefile
sed -i "s/^\([[:space:]]*\)ar rvs/\1\$(AR) rvs/" src/rigraph/Makefile

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
