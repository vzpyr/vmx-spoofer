# VMX Spoofer
![image](https://github.com/user-attachments/assets/df48c882-6e89-47eb-867e-e18bc6f16150)

Permanent HWID Spoofer developed by vmx.gg/vmxcheats.cc used to lift hwid bans on primarily Fortnite
- Currently being sold on their website for 9,99€ (lifetime)
- Original exe: [Download here]
- Recoded in batch: [Download here]
- Uses cdn (https://candyyboii.b-cdn.net/)

**TL;DR: Average amidewin spoofer with a few other little features.**

# Introduction
I originally got it by a friend after I got hwid banned and haven't had any knowledge about spoofers. I can't believe people still pay for these one-click spoofers even though there's enough resources for getting unbanned online. After tracing what it does using a few simple tools, here is what I found.

# How it works
[image]
First of all, the spoofer seems to **only launch once** on a windows machine and then never again (till you reset windows). After launching it, a console window appears and hides again. Then the UI appears. which prompts you to enter a license key (which was easily bypassable using **8code's keyauth bypasser**).

### Normal Spoof:
1. Downloads AMIDEWINx64 (exe and sys), then changes a few serials depending on what motherboard you chose and then deletes AMIDEWINx64 again.
[image]
2. Downloads Volumeid64 (exe), then changes volume ids of drives C-F to random ones and then deletes Volumeid64 again.
[image]
3. Runs slmgr commands to uninstall the license.
[image]

### ASUS Spoof
Does the same as normal spoof, with the difference being that:
- it changes a few more serials
- it puts AMIDEWINx64 and a generated serial changer (AsDeviceCheck.bat) into C:\Windows\Vss\Writers
- it creates a task to run this batch file on every boot (probably because ASUS resets these serials after every reboot)
[image]

### MAC Spoof
1. Checks if you have a Realtek or Intel network adapter using powershell, then:
--> FOR INTEL: Downloads eeupdatew64e and its driver, then changes mac addresses to random ones
--> FOR REALTEK: ???
[image]

### ASUS EFI
1. Opens a console window which asks you to enter the drive letter of a usb drive used for EFI spoofing.
2. Downloads files onto that usb drive (EFI...) and tells you to boot from that usb drive.
[image]

### SMBIOS Fixer
- Does the same as normal spoof, with the difference being that it changes much more serials, also depending on what motherboard you chose.
[image]
