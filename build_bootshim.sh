cd BootShim
make UEFI_BASE=0x00008000 UEFI_SIZE=0x00200000
rm BootShim.elf
cd ..