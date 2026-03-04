$FilePath = "e:\Lesehan Pemancingan\index.html"
$Content = Get-Content $FilePath -Raw

# Replace http dengan https
$Content = $Content -replace 'http://wa\.me/qr/FPD2WGYN422MC1', 'https://wa.me/qr/FPD2WGYN422MC1'

# Simpan kembali
$Content | Set-Content $FilePath

Write-Host "Selesai! Semua link telah diubah ke https."
