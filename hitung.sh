#!/bin/bash

   # bersih
if (tput clear); then : clear; fi
# variabel detik
detik=0
# variabel menit
menit=0
#variabel jam
jam=0

# loop untuk melakukan perulangan angka dengan cariage return
while [ 1 = 1 ] # [ 1 = 1 ] loop di mulai dari 1
do
   if (( $detik < 60 )); then # waktu 1 menit
        let detik++
    elif [[ $detik -eq 60 ]]; then # setiap 60 detik maka akan menambah nilai dari menit
           detik=0
          ((menit++))
    elif [[ $menit -eq 60 ]]; then # setelah 1 menit maka akan menambah nilai jam
            menit=0
          let jam++ # untuk menambah nilai jam
     fi

       if (sleep 0.1;printf "\r%s\e[00mStopwatch polygon%s\e[92m [%s\e[97m$detik:$menit:$jam%s\e[92m]%s"); then : do for x in true; fi # cetak data di atas
done # selesai

# jangan lupa folow me github
# dan subscribe channel saya : https://youtu.be/UwGxm5G1wOM
# terimakasi telah berkunjung
