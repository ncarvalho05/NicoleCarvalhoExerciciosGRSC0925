$soma = 0
$contagemPares = 0

while ($contagemPares -lt 30) {
    $n = [int](Read-Host "Introduza um número par (1-50)")
    if ($n -ge 1 -and $n -le 50 -and $n % 2 -eq 0) {
        $soma += $n
        $contagemPares++
    } else {
        Write-Host "Número inválido! Deve ser par e entre 1 e 50." -ForegroundColor Red
    }
}
Write-Host "A média dos 30 números pares é: $($soma / 30)"
