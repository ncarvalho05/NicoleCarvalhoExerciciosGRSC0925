do {
    Write-Host "--- MENU ---"
    Write-Host "1. Analisar Números (1 a 30.000)"
    Write-Host "2. Calculadora + Tabuada"
    Write-Host "3. Sair"
    $opcao = Read-Host "Escolha uma opção"

    switch ($opcao) {
        "1" {
            $limite = [int](Read-Host "Introduza um valor (1-30000)")
            for ($n = $limite; $n -ge 1; $n--) {
                # Lógica de Divisores
                $divs = 0; $somaDiv = 0
                for ($i = 1; $i -le $n; $i++) {
                    if ($n % $i -eq 0) { 
                        $divs++ 
                        if ($i -lt $n) { $somaDiv += $i }
                    }
                }
                # Lógica de Primo
                $primo = if ($divs -eq 2) { "Sim" } else { "Não" }
                # Lógica de Perfeito
                $perfeito = if ($somaDiv -eq $n) { "Sim" } else { "Não" }
                
                Write-Host "Num: $n | Primo: $primo | Divisores: $divs | Perfeito: $perfeito"
                
                if ($n % 10 -eq 0) {
                    $cont = Read-Host "Parar (P) ou Continuar (C)?"
                    if ($cont -eq 'P') { break }
                }
            }
        }
        "2" {
            $num1 = [int](Read-Host "Número 1 (1-1000)")
            $op = Read-Host "Operação (+, -, *, /, tabuada)"
            if ($op -eq "tabuada") {
                for ($i = 1; $i -le $num1; $i++) {
                    Write-Host "Tabuada do $i:"
                    for ($j = 1; $j -le 10; $j++) { Write-Host "$i x $j = $($i*$j)" }
                    if ($i % 20 -eq 0) { Read-Host "Pressione Enter para continuar..." }
                }
            } else {
                $num2 = [int](Read-Host "Número 2")
                Invoke-Expression "$num1 $op $num2"
            }
        }
    }
} while ($opcao -ne "3")
