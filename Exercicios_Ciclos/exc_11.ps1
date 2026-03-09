for ($i = 1; $i -le 5; $i++) {
    for ($j = 1; $j -le $i; $j++) {
        Write-Host $i -NoNewline
    }
    Write-Host "" # Nova linha
}
