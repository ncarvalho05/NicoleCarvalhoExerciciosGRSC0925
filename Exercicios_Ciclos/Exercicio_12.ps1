$num = [int](Read-Host "Introduza um número")
$acumulador = 0

for ($i = $num - 1; $i -ge 1; $i--) {
    Write-Host "$num + $i = $($num + $i)"
    Write-Host "$num - $i = $($num - $i)"
    Write-Host "$num * $i = $($num * $i)"
    Write-Host "$num / $i = $($num / $i)"
    $acumulador += 4 # Quatro operações realizadas por ciclo
}
Write-Host "Total de operações efetuadas: $acumulador" -ForegroundColor Cyan
