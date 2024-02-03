#!/bin/bash

SRC_DIR=$(cd $(dirname $0) && pwd)

# Destination directory
AURORAE_DIR="/usr/share/aurorae/themes"
SCHEMES_DIR="/usr/share/color-schemes"
PLASMA_DIR="/usr/share/plasma/desktoptheme"
LAYOUT_DIR="/usr/share/plasma/layout-templates"
LOOKFEEL_DIR="/usr/share/plasma/look-and-feel"
KVANTUM_DIR="/usr/share/Kvantum"
WALLPAPER_DIR="/usr/share/wallpapers"
SDDM_DIR="/usr/share/sddm/themes"
KONSOLE_DIR="/usr/share/konsole"

[[ ! -d ${AURORAE_DIR} ]] && mkdir -p ${AURORAE_DIR}
[[ ! -d ${SCHEMES_DIR} ]] && mkdir -p ${SCHEMES_DIR}
[[ ! -d ${PLASMA_DIR} ]] && mkdir -p ${PLASMA_DIR}
[[ ! -d ${LOOKFEEL_DIR} ]] && mkdir -p ${LOOKFEEL_DIR}
[[ ! -d ${KVANTUM_DIR} ]] && mkdir -p ${KVANTUM_DIR}
[[ ! -d ${WALLPAPER_DIR} ]] && mkdir -p ${WALLPAPER_DIR}
[[ ! -d ${KONSOLE_DIR} ]] && mkdir -p ${KONSOLE_DIR}

rm -r ${PLASMA_DIR}/foxxos
rm -r ${WALLPAPER_DIR}/foxxos

cp -r ${SRC_DIR}/aurorae/*                                                         ${AURORAE_DIR}
cp -r ${SRC_DIR}/color-schemes/*.colors                                            ${SCHEMES_DIR}
cp -r ${SRC_DIR}/kvantum/*                                                         ${KVANTUM_DIR}
cp -r ${SRC_DIR}/plasma/desktoptheme/*                                             ${PLASMA_DIR}
cp -r ${SRC_DIR}/look-and-feel/*                                                   ${LOOKFEEL_DIR}
cp -r ${SRC_DIR}/wallpaper/*                                                       ${WALLPAPER_DIR}
cp -r ${SRC_DIR}/sddm/*                                                            ${SDDM_DIR}
cp    ${SRC_DIR}/Foxxos.colorscheme                                                ${KONSOLE_DIR}
