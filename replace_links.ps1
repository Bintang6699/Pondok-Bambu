$FilePath = "e:\Lesehan Pemancingan\index.html"
$Content = Get-Content $FilePath -Raw

# Replace all WhatsApp links dengan prefix nomor lama dengan link QR baru
$Content = $Content -replace 'href="https://wa\.me/6281234567890\?text=[^"]*"', 'href="http://wa.me/qr/FPD2WGYN422MC1"'

# Simpan kembali
$Content | Set-Content $FilePath

Write-Host "Selesai! Semua link telah diperbarui."
