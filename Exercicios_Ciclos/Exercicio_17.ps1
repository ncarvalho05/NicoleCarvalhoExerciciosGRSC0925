for ($i = 1; $i -le 1000; $i++) {
    if ($i % 5 -eq 0 -and $i % 3 -ne 0) {
        Write-Host $i
    }
}
