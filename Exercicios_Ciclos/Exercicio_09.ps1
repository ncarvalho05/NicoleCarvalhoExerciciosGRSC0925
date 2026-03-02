do {
    $num = [int](Read-Host "Introduza um número entre 1 e 100")
} while ($num -lt 1 -or $num -gt 100)

Write-Host "Número válido aceito: $num"
