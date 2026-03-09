# Ciclo externo: percorre os números de 1 a 100
for ($t = 1; $t -le 100; $t++) {
    Write-Host "`n--- Tabuada do $t ---" -ForegroundColor Cyan
    
    # Ciclo interno: faz a multiplicação de 1 a 10 para cada número
    for ($i = 1; $i -le 10; $i++) {
        $res = $t * $i
        Write-Host "$t x $i = $res"
    }
}
