import random
import os

def _run_pywal():
    walpapers_folders = ['/home/johannes/Pictures/Wallpapers/',
                         # '/usr/share/endeavouros/backgrounds/eos_wallpapers_classic/',
                         # '/usr/share/endeavouros/backgrounds/eos_wallpapers_community/'
                         ]
    walpapers_folder = random.choice(walpapers_folders)
    pics = os.listdir(walpapers_folder)
    pic = random.choice(pics)
    path = os.path.join(walpapers_folder, pic)
    os.system(f'wal -i {path}')

if __name__=='__main__':
    _run_pywal()
