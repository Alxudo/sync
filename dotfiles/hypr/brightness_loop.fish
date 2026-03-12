#!/usr/bin/env fish
# Script para subir o bajar brillo continuamente
# DIRECTION = "+" para subir, "-" para bajar

set DIRECTION $argv[1]  # recibe el argumento + o - desde Hyprland bind
set STEP 1              # incremento en %

# Obtenemos máximo y mínimo de brillo
set MAX (brightnessctl m)         # valor máximo hardware
set MIN (math "$MAX * 0.01")     # 1% del máximo

while true
    # brillo actual
    set CUR (brightnessctl g)

    # romper loop si llegamos a límites
    if test $DIRECTION = "-" -a $CUR -le $MIN
        break
    end
    if test $DIRECTION = "+" -a $CUR -ge $MAX
        break
    end

    # aplicar incremento
    if test $DIRECTION = "+"
        brightnessctl s $STEP%+
    else
        brightnessctl s $STEP%-
    end

    sleep 0.005  # espera entre incrementos

end

