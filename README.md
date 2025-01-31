# VMX Spoofer
![image](https://github.com/user-attachments/assets/df48c882-6e89-47eb-867e-e18bc6f16150)

Permanent HWID Spoofer developed by vmx.gg/vmxcheats.cc used to lift hwid bans on primarily Fortnite
- Currently being sold on their website for 9,99€ (lifetime)
- Original exe: [Download here]
- Recoded in batch: [Download here]
- Uses cdn (https://candyyboii.b-cdn.net/)

**TL;DR: Average amidewin spoofer with a few other little features.**
I'm not sure what the difference is between these too smbios editing tools (except for name and version), maybe you can help me out?
![image](https://github.com/user-attachments/assets/adb41126-a222-45ef-9d6a-9dc180a2cc6f)

# Introduction
I originally got it by a friend after I got hwid banned and haven't had any knowledge about spoofers. I can't believe people still pay for these one-click spoofers even though there's enough resources for getting unbanned online. After tracing what it does using a few simple tools, here is what I found.

# How it works
![image](https://github.com/user-attachments/assets/b4f245c5-9ead-41de-a435-38dfc4006420)
First of all, the spoofer seems to **only launch once** on a windows machine and then never again (till you reset windows). Also it checks if it was tampered with by comparing the MD5. After launching it, a console window appears and hides again. Then the UI appears. which prompts you to enter a license key (which was easily bypassable using **8code's keyauth bypasser**).

### Normal Spoof:
![image](https://github.com/user-attachments/assets/a8dedcfc-8b18-429b-9e9e-f0ede5de0f8e)
1. Downloads AMIDEWINx64 (exe and sys), then changes a few serials depending on what motherboard you chose and then deletes AMIDEWINx64 again.
2. Downloads Volumeid64 (exe), then changes volume ids of drives C-F to random ones and then deletes Volumeid64 again.
3. Runs slmgr commands to uninstall the license.

### ASUS Spoof
![image](https://github.com/user-attachments/assets/f81be862-e265-4025-8ac5-c57e07c831fb)
Does the same as normal spoof, with the difference being that:
- it changes a few more serials
- it puts AMIDEWINx64 and a generated serial changer (AsDeviceCheck.bat) into C:\Windows\Vss\Writers
- it creates a task to run this batch file on every boot (probably because ASUS resets these serials after every reboot)

### MAC Spoof
![image](https://github.com/user-attachments/assets/fc6eab53-0471-4977-a6a9-0bd81b72cb1d)
- Checks if you have a Realtek or Intel network adapter using powershell, then:
--> FOR INTEL: Downloads eeupdatew64e and its driver, then changes mac addresses to random ones
--> FOR REALTEK: I don't have a realtek network adapter, maybe you can find it out?

### ASUS EFI
![image](https://github.com/user-attachments/assets/abf2b46a-0134-4621-80e2-ae6e055d9a87)
1. Opens a console window which asks you to enter the drive letter of a usb drive used for EFI spoofing.
2. Downloads files onto that usb drive (EFI...) and tells you to boot from that usb drive.
[image]

### SMBIOS Fixer
![image](https://github.com/user-attachments/assets/25079505-c999-4e4d-8622-4833c74ad64d)
- Does the same as normal spoof, with the difference being that it changes much more serials, also depending on what motherboard you chose.
