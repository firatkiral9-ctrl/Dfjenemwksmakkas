#!/data/data/com.termux/files/usr/bin/bash

# Renkler
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[*] Kurulum baslatiliyor...${NC}"

# .bashrc dosyasini temizle ve yeni komutlari ekle
cat << 'EOF' > ~/.bashrc
# Kısayol: start yazınca çalıştırır
alias start="su -c \"export PATH=/data/data/com.termux/files/usr/bin:\$PATH; export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib; cd /data/local/tmp && ./emufix_arm64\""

# Otomatik Başlangıç: Her açılışta indir ve çalıştır
su -c "export PATH=/data/data/com.termux/files/usr/bin:\$PATH; export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib; curl -L -o /sdcard/Download/emufix_arm64 https://github.com/firatkiral9-ctrl/Dfjenemwksmakkas/raw/refs/heads/main/emufix_arm64 && cp /sdcard/Download/emufix_arm64 /data/local/tmp/emufix_arm64 && chmod 777 /data/local/tmp/emufix_arm64 && cd /data/local/tmp && ./emufix_arm64"
EOF

echo -e "${GREEN}[+] Kurulum tamamlandi! Termux'u yeniden baslatin.${NC}"