# Hackintosh pada Lenovo ThinkPad C13 Yoga Chromebook 

Proyek ini mendokumentasikan eksperimen pemasangan **macOS Sequoia** pada **Lenovo ThinkPad C13 Yoga Chromebook**. Perlu dicatat bahwa perangkat ini berbasis **AMD Ryzen 5 3500C (Picasso)**, yang secara teknis tidak didukung oleh Apple. Proyek ini bersifat eksperimental dan ditujukan untuk tujuan riset.

![Keterangan Foto Anda](Jepretan Layar 2026-06-21 pukul 20.51.17.png.png)

---

## 💻 Spesifikasi Hardware
- **Prosesor:** AMD Ryzen 5 3500C (Picasso)
- **RAM:** 8GB DDR4 (Soldered)
- **iGPU:** AMD Radeon Vega 8 (Mobile)
- **Penyimpanan:** 256GB SSD (FORESEE)
- **Wi-Fi/Bluetooth:** Intel AC 8265
- **Audio:** AMD Audio Coprocessor 
- **Layar:** 13.3" FHD Touchscreen
- **Bootloader:** OpenCore
- **OS:** macOS Sequoia 15.7.8

---

## ✅ Status Pekerjaan (Working)
*Fitur-fitur yang berhasil diimplementasikan:*

- [x] **Kernel:** Booting ke lingkungan Desktop (menggunakan `NootedRed`).
- [x] **Input:** Keyboard dan Trackpad (via `VoodooI2C` & `VoodooPS2`).
- [x] **Konektivitas:** Wi-Fi (via `AirportItlwm`).
- [x] **USB:** Deteksi port USB (Mapping `USBPorts.kext`).
- [x] **Tampilan:** Output dasar ke layar.

---

## ⚠️ Status Kendala (Known Issues)
*Fitur yang belum berfungsi optimal atau masih dalam tahap pengembangan:*

- [ ] **Akselerasi Grafis:** Dukungan Metal terbatas; animasi sistem mungkin terasa berat.
- [ ] **Power Management:** Fitur *Sleep/Wake* belum stabil; sering terjadi *freeze* saat transisi *sleep*.
- [ ] **Audio Internal:** Codec audio internal tidak terdeteksi secara native. *Solusi: Disarankan menggunakan USB Audio Dongle.*
- [ ] **Webcam:** Mengalami *crash* pada aplikasi seperti Photo Booth.

---

## 🛠️ Catatan Penting
Proyek ini **bukan ditujukan untuk penggunaan harian (*daily driver*)**. Karena keterbatasan arsitektur AMD APU pada Chromebook dan ketiadaan *driver* resmi dari Apple, sistem ini lebih cocok untuk tujuan pembelajaran dan riset teknis mengenai arsitektur sistem operasi.

## 🤝 Kontribusi
Jika Anda memiliki pengalaman dengan perangkat *codename* Morphius atau memiliki saran untuk optimasi SSDT/Kext, silakan buat *Pull Request* atau buka *Issue*. Setiap masukan sangat dihargai untuk pengembangan riset ini.

---

*Keep Hackintosh and Keep Hair Fall!* ☕
