#!/usr/bin/env python3

import sys

from PIL import Image

color = 0xc7, 0x92, 0xea  # light purple from the Palenight theme
color = 0xda, 0x86, 0x3e  # light orange from the Apollo theme

filenames = [
    'rockstar/titlebar/sticky_normal_inactive.png',
    'rockstar/titlebar/sticky_normal_active.png',
    #  'rockstar/titlebar/sticky_focus_inactive.png',
    #  'rockstar/titlebar/sticky_focus_active.png',
    'rockstar/titlebar/ontop_normal_inactive.png',
    'rockstar/titlebar/ontop_normal_active.png',
    #  'rockstar/titlebar/ontop_focus_inactive.png',
    #  'rockstar/titlebar/ontop_focus_active.png',
    'rockstar/titlebar/minimize_normal.png',
    #  'rockstar/titlebar/minimize_focus.png',
    'rockstar/titlebar/maximized_normal_inactive.png',
    'rockstar/titlebar/maximized_normal_active.png',
    #  'rockstar/titlebar/maximized_focus_inactive.png',
    #  'rockstar/titlebar/maximized_focus_active.png',
    'rockstar/titlebar/floating_normal_inactive.png',
    'rockstar/titlebar/floating_normal_active.png',
    #  'rockstar/titlebar/floating_focus_inactive.png',
    #  'rockstar/titlebar/floating_focus_active.png',
    'rockstar/titlebar/close_normal.png',
    #  'rockstar/titlebar/close_focus.png',
    'rockstar/taglist/square.png',
    #  'rockstar/taglist/squaref.png',
    #  'rockstar/submenu.png',
    'rockstar/ninja.png',
    'rockstar/layouts/tiletop.png',
    'rockstar/layouts/tile.png',
    'rockstar/layouts/tileleft.png',
    'rockstar/layouts/tilebottom.png',
    'rockstar/layouts/spiral.png',
    'rockstar/layouts/max.png',
    'rockstar/layouts/magnifier.png',
    'rockstar/layouts/fullscreen.png',
    'rockstar/layouts/floating.png',
    'rockstar/layouts/fairv.png',
    'rockstar/layouts/fairh.png',
    'rockstar/layouts/dwindle.png',
    'rockstar/layouts/cornersw.png',
    'rockstar/layouts/cornerse.png',
    'rockstar/layouts/cornernw.png',
    'rockstar/layouts/cornerne.png',
]

for filename in filenames:
    print(filename)

    image = Image.open(filename)
    pixels = image.getdata()
    new_pixels = []

    for pixel in pixels:
        print(pixel)
        _, _, _, a = pixel
        if a != 0:
            pixel = *color, a
        new_pixels.append(pixel)

    image.putdata(new_pixels)
    image.save(filename)
