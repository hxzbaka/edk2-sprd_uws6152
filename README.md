# EDK2-SPRD_UWS6152

为 Unisoc (SPRD) W527 芯片适配的 EDK2 固件项目。

## 项目描述

本项目旨在为基于紫光展锐 W527（UWS6152）芯片的设备提供 UEFI 固件支持，并尽可能的让他启动UEFI_Shell，未来还可能有希望启动到WinPE呢（笑

## 设备支持状态

| 设备 | GPIO | EMMC/UFS | WinPE | Linux | 启动到UEFI_Shell | 描述 |
|------|------|----------|-------|------------|------|------------|
| S16B(PLUS) | × | × | × | × | × | 等待适配 |
| F20 | × | × | × | × | × | 等待适配 |
| CD20MAX | × | × | × | × | × | 等待适配 |
| S12 | × | × | × | × | × | 等待适配 |

## FAQ

- **Devices**: 请等待适配

## INFO

- **代码仓库**: https://github.com/hxzbaka/EDK2-SPRD_UWS6152

## 代码引用

本项目基于以下开源项目开发：

- [EDK2](https://github.com/tianocore/edk2) - TianoCore EDK2 项目
- [edk2-platforms](https://github.com/tianocore/edk2-platforms) - EDK2 平台支持

## 构建说明

```bash
# 克隆代码
git clone https://github.com/hxzbaka/EDK2-SPRD_UWS6152.git
cd EDK2-SPRD_UWS6152

# 初始化子模块
git submodule update --init
```

## 开源许可
本项目基于 [BSD-3-Clause] 许可开源