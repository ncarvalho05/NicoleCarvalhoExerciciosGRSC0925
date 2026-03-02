for ($i = 1; $i -le 10; $i++) {
    $num = Read-Host "Introduza o número $i"
    if ([int]$num % 2 -eq 0) {
        Write-Host "$num é PAR"
    } else {
        Write-Host "$num é ÍMPAR"
    }
}
