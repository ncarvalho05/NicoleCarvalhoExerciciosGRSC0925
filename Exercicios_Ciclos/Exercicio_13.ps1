$num = [int](Read-Host "Introduza um número para a tabuada")
Write-Host "--- Tabuada do $num ---" -ForegroundColor Yellow

for ($i = 1; $i -le 10; $i++) {
    $resultado = $num * $i
    Write-Host "$num x $i = $resultado"
}
