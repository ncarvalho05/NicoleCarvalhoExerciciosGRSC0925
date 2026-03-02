$n = [int](Read-Host "Digite um número")
$divisores = 0
for ($i = 1; $i -le $n; $i++) {
    if ($n % $i -eq 0) { $divisores++ }
}
Write-Host "O número $n tem $divisores divisores."
