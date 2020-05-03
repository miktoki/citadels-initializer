from jinja2 import Environment, FileSystemLoader
import os
# from songs import SongSearch, INLOC
# songs = SongSearch(*INLOC).songs() #list of song dicts: lyrics category title ++
# cats = {s['category'] for s in songs}
# langs = {s['lang'] for s in songs}
# print("Getting songs from ",*INLOC)
# sorted_songs = sorted(
#     sorted(
#         sorted(
#             songs
#             , key=lambda s:s['title'].lower()
#             ), key=lambda s:s['lang'].lower(), reverse=True
#         ), key=lambda s:s['category'].lower()
#     )
# song_filter = {'songs': sorted_songs, 'categories':cats, 'languages':langs}
e = Environment(
    loader=FileSystemLoader(os.curdir),
    trim_blocks=True,
    lstrip_blocks=True
)
params = {
    "presets": [
        'First game',
        'Ambitious Aristocrats',
        'Cunning Agents',
        'Illustrious Emissaries',
        'Devious Dignitaries',
        'Tenacious Delegates',
        'Vicious Nobles',
    ]
}

out_fn = "index.html"
tpl_fn = "citadels.tpl"

template = e.get_template(tpl_fn)
print("generate {} based on template {}".format(out_fn, tpl_fn))
with open(out_fn, 'w', encoding='utf-8') as f:
    f.write(template.render(params))

import subprocess
print("\nupdate main.css from main.scss")
subprocess.run("sass main.scss main.css".split())
