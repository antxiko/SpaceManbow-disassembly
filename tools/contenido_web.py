#!/usr/bin/env python3
"""EL CONTENIDO de la web de este cartucho: lo unico que es de este juego.

jekyll.py y make_web.py son la maquinaria y no llevan dentro el nombre de
ningun juego: lo leen de aqui.

Todas las cifras de aqui estan medidas sobre este cartucho, con las
herramientas de tools/: CODIGO y DATOS los imprime tools/presupuesto.py
(make sanity) y RUTINAS, INSTRUCCIONES y COMENTARIOS los da
tools/densidad_total.py.
"""

NOMBRE = "Space Manbow"
CATALOGO = "RC-768"
ANIO = 1989
REPOSITORIO = "https://github.com/antxiko/SpaceManbow-disassembly"

CODIGO = 45520
DATOS = 216624
RUTINAS = 3142
INSTRUCCIONES = 22822
COMENTARIOS = 9338


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


PIE_LEGAL = {
    "es": "<em>Space Manbow</em> (スペースマンボウ) lo public&oacute; Konami para MSX2 "
          "en 1989; su n&uacute;mero de cat&aacute;logo es RC-768 y son 256 KB con el "
          "chip de sonido SCC. Todos los derechos sobre el juego siguen siendo de sus "
          "titulares. Este trabajo es de preservaci&oacute;n, estudio y "
          "documentaci&oacute;n, y la imagen del cartucho no se distribuye.",
    "en": "<em>Space Manbow</em> (スペースマンボウ) was published by Konami for the "
          "MSX2 in 1989; its catalogue number is RC-768 and it is 256 KB with the SCC "
          "sound chip. All rights in the game remain with their holders. This is "
          "preservation, study and documentation work, and the cartridge image is not "
          "distributed.",
}

PORTADA = {
    "es": dict(
        titulo="Space Manbow - desensamblado comentado",
        claim="Las nueve fases enteras, dibujadas desde la ROM con el motor del mapa del "
              "propio cartucho; la nave y cada c&aacute;psula, los enemigos y los nueve "
              "jefes jugados por el cartucho, en GIF; las m&uacute;sicas del SCC sacadas "
              "de su propio motor, la presentaci&oacute;n, la demostraci&oacute;n y el "
              "final, los textos y las teclas de depuraci&oacute;n que se dejaron dentro.",
        ficha=["Konami - <b>(c) Konami 1989</b>",
               "Cartucho <b>RC-768</b>, MegaROM de 256 KB (Konami con SCC)",
               "<b>MSX2</b>", "Volcado <b>f6199f48...</b>"],
        aviso="<b>Aqu&iacute; no hay capturas del juego.</b> Las fases las <b>dibuja "
              "c&oacute;digo nuestro desde la ROM</b>, con el motor del mapa y los "
              "gr&aacute;ficos del cartucho, cotejadas casilla a casilla con lo que el "
              "cartucho tiene en pantalla; los GIF los <b>pinta el propio cartucho</b>, "
              "ejecutado aqu&iacute; con su c&oacute;digo, al ritmo medido en openMSX.",
    ),
    "en": dict(
        titulo="Space Manbow - commented disassembly",
        claim="The nine stages in full, drawn from the ROM with the cartridge's own map "
              "engine; the ship and every capsule, the enemies and the nine bosses played "
              "by the cartridge, in GIF; the SCC tunes taken from its own engine, the "
              "intro, the demo and the ending, the texts and the debug keys left inside.",
        ficha=["Konami - <b>(c) Konami 1989</b>",
               "Cartridge <b>RC-768</b>, 256 KB MegaROM (Konami with SCC)",
               "<b>MSX2</b>", "Dump <b>f6199f48...</b>"],
        aviso="<b>There are no screenshots of the game here.</b> The stages are "
              "<b>drawn from the ROM by our own code</b>, with the cartridge's map engine "
              "and graphics, checked tile by tile against what the cartridge has on "
              "screen; the GIFs are <b>painted by the cartridge itself</b>, running its "
              "own code here, at the pace measured in openMSX.",
    ),
}

# Los tres bloques: el juego | curiosidades | por dentro.
# (en, es, titulo en, titulo es, que hay en, que hay es)
PAGINAS = [
    [("THE-STAGES.html", "LAS-FASES.html", "The stages", "Las fases",
      "the nine stages drawn whole from the ROM, and how the map engine scrolls them",
      "las nueve fases dibujadas enteras desde la ROM, y c&oacute;mo las mueve el motor del mapa"),
     ("THE-SHIP.html", "LA-NAVE.html", "The ship", "La nave",
      "every capsule and what it does, played in GIF",
      "cada c&aacute;psula y lo que hace, jugado en GIF"),
     ("THE-ENEMIES.html", "LOS-ENEMIGOS.html", "The enemies", "Los enemigos",
      "every enemy of every stage, played by the cartridge, in GIF",
      "cada enemigo de cada fase, jugado por el cartucho, en GIF"),
     ("THE-BOSSES.html", "LOS-JEFES.html", "The bosses", "Los jefes",
      "the nine fights in order, played by the cartridge",
      "las nueve peleas en orden, jugadas por el cartucho"),
     ("THE-TEXTS.html", "LOS-TEXTOS.html", "The texts", "Los textos",
      "every text in the cartridge, translated",
      "todos los textos del cartucho, traducidos"),
     ("THE-MUSIC.html", "LA-MUSICA.html", "The music", "La m&uacute;sica",
      "the tunes from its own SCC sound engine, and where each one is asked for",
      "las m&uacute;sicas de su propio motor de sonido SCC, y d&oacute;nde se pide cada una"),
     ("THE-SEQUENCES.html", "LAS-SECUENCIAS.html", "The sequences", "Las secuencias",
      "the intro, the demo and the ending, whole and at the MSX's own pace",
      "la presentaci&oacute;n, la demostraci&oacute;n y el final, enteros y al ritmo del MSX")],
    [("CURIOSITIES.html", "CURIOSIDADES.html", "Curiosities", "Curiosidades",
      "the debug keys, the demo recorder, the V9958, the page viewer, the open questions",
      "las teclas de depuraci&oacute;n, el grabador de demostraciones, el V9958, el visor "
      "de p&aacute;ginas, las preguntas abiertas")],
    [("UNDER-THE-HOOD.html", "POR-DENTRO.html", "Under the hood", "Por dentro",
      "rebuilding the ROM, the mapper, the split screen, the states, the RAM and the tools",
      "rehacer la ROM, el mapper, la pantalla partida, los estados, la RAM y las "
      "herramientas")],
]

# Repositorio nuevo: no hay paginas viejas que redirigir.
VIEJAS = {}

LOGOTIPO = "logotipo.png"
