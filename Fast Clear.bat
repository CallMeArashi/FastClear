echo Limpando Cache
ipconfig /flushdns
echo Reparar Arquivos Corrompidos
sfc /scannow
echo Reparar Imagem do Windows
DISM /Online /Cleanup-Image /RestoreHealth
echo Verificar Integridade do Disco
chkdsk C: /scan
echo Limpar Arquivos Temporários do Usuário
del /s /f /q "%temp%\*"
echo Limpar cache da Microsoft Sote
wsreset
echo Desativar Recall do Windows
DISM /Online /Disable-Feature /FeatureName:"Recall"
