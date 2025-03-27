# vmx spoofer
reverse-engineering vmx spoofer

![image](https://github.com/user-attachments/assets/df48c882-6e89-47eb-867e-e18bc6f16150)

# info
- average amidewin spoofer with a few other little features
- currently being sold on their [shopify store](https://170nbq-ed.myshopify.com/) for 13,95€ (onetime)/41,95€ (lifetime)
- uses a cdn (https://candyyboii.b-cdn.net/)

# features
### normal spoof:
![image](https://github.com/user-attachments/assets/a8dedcfc-8b18-429b-9e9e-f0ede5de0f8e)
- downloads amidewin, then changes a few serials depending on what motherboard you chose and then deletes amidewin again.
- downloads volumeid64, then changes volume ids of drives C-F to random ones and then deletes volumeid64 again.
- runs slmgr commands to uninstall the license.

### asus spoof
![image](https://github.com/user-attachments/assets/f81be862-e265-4025-8ac5-c57e07c831fb)
- does the same as normal spoof, with the difference being that it changes more serials and creates a task which runs a batch script on every boot

### mac spoof
![image](https://github.com/user-attachments/assets/fc6eab53-0471-4977-a6a9-0bd81b72cb1d)
- checks if you have a realtek or intel network adapter using powershell
- intel: downloads eeupdatew64e and then changes all mac addresses to random ones
- realtek: ?

### asus efi
![image](https://github.com/user-attachments/assets/abf2b46a-0134-4621-80e2-ae6e055d9a87)
- opens a console window which asks you for the drive letter of an usb drive
- pushes files onto that usb drive and tells you to boot from that usb drive

### smbios fixer
![image](https://github.com/user-attachments/assets/25079505-c999-4e4d-8622-4833c74ad64d)
- does the same as normal spoof, with the difference being that it changes much more serials, also depending on what motherboard you chose
