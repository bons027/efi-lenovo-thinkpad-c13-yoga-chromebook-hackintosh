# Lenovo ThinkPad C13 Yoga Chromebook Hackintosh EFI

An OpenCore EFI configuration for running macOS on the **Lenovo ThinkPad C13 Yoga Chromebook** (codename: **Morphius**).

---

## 💻 Hardware Specifications

| Component | Specifications |
| :--- | :--- |
| **Model** | Lenovo ThinkPad C13 Yoga Chromebook (Morphius) |
| **Firmware** | MrChromebox UEFI (Coreboot) |
| **CPU** | AMD Ryzen 5 3500C (Picasso, 4 Cores / 8 Threads) |
| **GPU** | AMD Radeon™ Vega 8 Graphics (Picasso, Integrated) |
| **RAM** | LPDDR4 |
| **Display** | 13.3" IPS FHD (1920x1080) Touchscreen |
| **Audio** | AMD High Definition Audio (Controller `1002-15DE`) |
| **Storage** | FORESEE 256GB NVMe SSD (SM2263XT DRAM-less Controller) |
| **Wi-Fi & Bluetooth** | Intel Dual Band Wireless-AC 8265 |
| **Touchpad** | ELAN0000 (I2C) |
| **Touchscreen** | GDIX0000 (I2C) |
| **Keyboard** | Chromebook Keyboard (GOOG000A, PS/2 mapped) |

---

## 🍏 macOS Compatibility

- **Compatible macOS Versions**: macOS Ventura (13), macOS Sonoma (14), and macOS Sequoia (15).
- **SMBIOS Used**: `MacBookPro16,3` (Optimized for Picasso APU configurations).

---

## 🛠️ Status of Components

### ✅ What Works
* **Graphics Acceleration**: Full metal acceleration with AMD Radeon Vega 8 via `NootedRed.kext`.
* **Wi-Fi & Bluetooth**: Works natively using `AirportItlwm.kext` and `IntelBluetoothFirmware.kext`.
* **Touchpad & Touchscreen**: Full gestures and multi-touch working via `VoodooI2C.kext` and `VoodooI2CHID.kext` (run with polling via `-vi2c-force-polling`).
* **Keyboard**: Keyboard functionality works using `VoodooPS2Controller.kext`.
* **Battery Status**: Shows percentage and charging status correctly via `SMCBatteryManager.kext` and `ECEnabler.kext`.
* **Storage**: NVMe SSD works with power management thanks to `NVMeFix.kext`.
* **USB Ports**: Mapped using `USBToolBox.kext` and `UTBMap.kext`.
* **Brightness & Brightness Keys**: Working with `BrightnessKeys.kext` and `SSDT-PNLF.aml`.

---

## ⚠️ Known Bugs & Limitations

> [!WARNING]
> The following features are currently non-functional or have limitations due to hardware/software constraints:

1. **DRM (Digital Rights Management)**
   - Apple TV+, Netflix, and other DRM-protected streaming services do not work in Safari. This is a known limitation of the AMD APU graphics drivers on macOS. Workaround: Use Chromium-based browsers (e.g., Chrome, Edge) for streaming.
2. **Sleep / Wake Stability**
   - Sleep and wake transitions might be unstable under the MrChromebox coreboot UEFI firmware. Sometimes the laptop will experience immediate wake or fail to wake from a deep sleep state.
3. **Chromebook Keyboard Mapping**
   - Since Chromebooks use a non-standard layout (missing top-row function keys and search/launcher instead of caps lock), some shortcut keys may not map perfectly. 
   - *Tip: Use Karabiner-Elements to customize your keyboard mappings once macOS is installed.*
4. **Internal Microphone**
   - The built-in microphone may require additional layout ID fine-tuning to work correctly.

---

## 🚀 Post-Installation / SMBIOS Configuration

> [!IMPORTANT]
> This EFI configuration has had its unique SMBIOS credentials removed to keep it anonymous. You **must** generate your own credentials before booting.

1. Download [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS).
2. Run GenSMBIOS and generate credentials for `MacBookPro16,3`.
3. Open `EFI/OC/config.plist` using a plist editor (like OCAuxiliaryTools or ProperTree).
4. Navigate to `PlatformInfo -> Generic` and populate the following fields with your generated values:
   - `MLB` (Board Serial Number)
   - `SystemSerialNumber` (Serial Number)
   - `SystemUUID` (SmUUID)
5. Save the file and restart.

---

## 📄 License & Credits

- [Acidanthera](https://github.com/acidanthera) for OpenCorePkg and essential kexts.
- [ChefKissInc](https://github.com/ChefKissInc/NootedRed) for `NootedRed.kext` enabling AMD APU graphics.
- [MrChromebox](https://mrchromebox.tech) for the UEFI coreboot firmware making Chromebook Hackintoshes possible.
