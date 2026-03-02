$contagem = 0
$num = 2
while ($contagem -lt 10) {
    $ePrimo = $true
    for ($i = 2; $i -le [math]::Sqrt($num); $i++) {
        if ($num % $i -eq 0) { $ePrimo = $false; break }
    }
    if ($ePrimo) {
        Write-Host "Primo $num"
        $contagem++
    }
    $num++
}
