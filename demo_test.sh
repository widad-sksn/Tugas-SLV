#!/bin/bash
clear
echo "======================================================="
echo "   DEMO AUTOMATION TESTING - KELOMPOK 5 (CLEAN VER)"
echo "======================================================="
echo "Target: Load Balancer (192.168.33.92)"
echo ""

echo "[1] TEST ROUND ROBIN (Hit 6 Kali)"
echo "---------------------------------"
for i in {1..6}
do
   # Ambil judul halaman
   RESP=$(curl -s http://192.168.33.92 | grep -oP '(?<=<title>).*?(?=</title>)' | sed 's/🔵 //; s/🟢 //')
   echo "Request #$i => Masuk ke: $RESP"
   sleep 0.5
done

echo ""
echo "[2] TEST HALAMAN TANGGAL"
echo "------------------------"
DATE_CONTENT=$(curl -s http://192.168.33.92/date.html | grep "Tanggal sekarang adalah")
if [[ ! -z "$DATE_CONTENT" ]]; then
    echo "Status: SUKSES (Data Terbaca)"
else
    echo "Status: GAGAL"
fi

echo ""
echo "[3] CEK STATUS HAPROXY"
echo "----------------------"
STATS=$(curl -s -I http://192.168.33.92/haproxy?stats | head -n 1)
echo "HTTP Response: $STATS"
echo ""
