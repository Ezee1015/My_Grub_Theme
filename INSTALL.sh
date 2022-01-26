#!/bin/bash

function INSTALAR {

   clear
   echo "Seleccione la Distro que Aparezca de Fondo en el GRUB..."
   echo "   1.- DEBIAN"
   echo "   2.- MANJARO"
   echo "   3.- LINUX MINT"
   echo "   4.- ARCH LINUX"
   echo "   5.- KALI LINUX"
   read -p "Ingrese la Seleccion > " respuesta

   case $respuesta in
       '1' ) DISTRO="debian" ;;
       '2' ) DISTRO="manjaro" ;;
       '3' ) DISTRO="mint" ;;
       '4' ) DISTRO="arch" ;;
       '5' ) DISTRO="kali" ;;
        *  ) INSTALAR ;;
    esac

    clear
    sudo cp -rf "dark-matter-$DISTRO/dark-matter" /boot/grub/themes/
    # sudo echo "GRUB_THEME="/boot/grub/themes/dark-matter/theme.txt"" >> /etc/default/grub

    echo ""
    echo "Seleccine el Tema en el Grub Customizer"
    echo ""
    echo ""
    sudo grub-customizer

}



function MENU {

    clear

    for number in {0..10}; do
        echo ""
    done

    echo "" ; echo ""
    read -p "Desea Instalar Mi Tema de Grub? (S/N)>  " respuesta
    clear
    echo "" ; echo ""

    case $respuesta in
        's' )   INSTALAR  ;;
        'si' )  INSTALAR  ;;
        'Si' )  INSTALAR  ;;
        'sI' )  INSTALAR  ;;
        'SI' )  INSTALAR  ;;
        'y' )   INSTALAR  ;;
        'yes' ) INSTALAR  ;;
        'YES' ) INSTALAR  ;;
        '1' )   INSTALAR  ;;
        'S' )   INSTALAR  ;;
        * )     echo "           Se ha elegido que NO. Se saldrá del Instalador." ;;
    esac

    echo "" ; echo ""

}

MENU
exit
