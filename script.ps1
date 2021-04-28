param ($ip)
if(!$ip){
    echo "######## PORTSCAN knock #############"
    echo "#####################################"
    echo "Modo de usar .\script.ps1 192.168.0.1"
} else {
$topports = 13,37,30000,3000,1337
try {foreach ($porta in $topports){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
    echo "Porta $porta Aberta"
}} else {
    echo "Porta $porta Fechada"
}} catch {}
}

