param(
    $o, $opcion,
    $d, $direccion,
    $l, $lista,
    $h
)
$P0w3rFuzz1ngVersion="v1.0";
Import-Module ./modules/PsIni/4.0.1/PSIni.psd1
Import-Module 

if($o -eq "op1" -or $opcion -eq "op1"){
    $INIFile=Import-Ini .\config.ini
    $Config=@{
        CLIST=$INIFile['CONFIG']['CLIST']
        FLIST=$INIFile['CONFIG']['FLIST']
        WAIT=$INIFile['CONFIG']['WAIT']
        FMODE=$INIFile['CONFIG']['FMODE']
        URL="http://"+$INIFile['TARGET']['URL']
        LIST=$INIFile['TARGET']['LIST']
        WORDLIST=$INIFile['TARGET']['WORDLIST']
        SLEEP=$INIFile['TARGET']['SLEEP']
    }
    Write-Output $Config.HTTPS
}elseif($o -eq "op2" -or $opcion -eq "op2"){
    
}elseif($o -eq "op3" -or $opcion -eq "op3"){
    $help=@"
    P0w3rFuzz1ng $P0w3rFuzz1ngVersion (https://github.com/infernoidpl4y/P0w3rFuzz1ng)
    Uso: pfzg (Tipo de opcion) [opciones]
    -o, -opcion     Especifica el tipo de opcion.
        op1 - User config.ini en vez de -d y -l
        op2 - User los parametros -d y -l
        op3 - Este mensaje
    -d, -direccion  Direccion a realizar fuzzing.
    -l, -lista      Direccion del archivo(Wordlist)
    Ejemplos:
    pfzg -o op1
    pfzg -o op2 -d https://example.com/PFZG -l /home/user/wordlist/wordlist.txt
"@
    Write-Output($help);
}else{
    Write-Output(@"
    P0w3rFuzz1ng $P0w3rFuzz1ngVersion
    Use(Para ver info): pfzg -o op3
"@)
}