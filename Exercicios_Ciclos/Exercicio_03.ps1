$soma = 0
for ($i = 1; $i -le 10; $i++) {
    $nota = Read-Host "Introduza a nota do aluno $i"
    $soma += [double]$nota
}
$media = $soma / 10
Write-Host "A média da turma é: $media" -ForegroundColor Green
