#!/bin/bash
# Environment for building GeneralsXZH on Apple Silicon with Homebrew-provided
# Vulkan/MoltenVK instead of the LunarG SDK. Usage:
#   source scripts/build/macos/env-homebrew.sh
#   ./scripts/build/macos/build-macos-zh.sh
#   ./scripts/build/macos/bundle-macos-zh.sh
# Prerequisites: brew install cmake ninja meson pkgconf ccache glslang sdl3 molten-vk \
#   vulkan-headers vulkan-loader vulkan-tools; a vcpkg checkout at $VCPKG_ROOT.
export VCPKG_ROOT="${VCPKG_ROOT:-$HOME/Source/zero-hour/vcpkg}"
export VULKAN_SDK=/opt/homebrew
export VCPKG_DEFAULT_TRIPLET=arm64-osx
export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@3
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig:/opt/homebrew/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
export CMAKE_C_COMPILER_LAUNCHER=ccache
export CMAKE_CXX_COMPILER_LAUNCHER=ccache
export HOMEBREW_NO_AUTO_UPDATE=1
