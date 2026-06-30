from pathlib import Path
import subprocess
import sys
import tempfile


def download(files, limit=None):
    tmp_dir = tempfile.TemporaryDirectory()

    for file in files[0:limit]:
        # file names follow the pattern "img/xxxx-xx-xx-name.jpg"
        base_name = file.split('/', maxsplit=1)[1]
        res = subprocess.run(f"b2 download-file-by-name maxcrone-org {file} {tmp_dir.name}/{base_name}", stdout=subprocess.DEVNULL, shell=True, check=True)

    return tmp_dir


def transcode(wd, target):
    wd = Path(wd.name)
    for jpg in wd.iterdir():
        for t in target:
            new = wd / f"{jpg.stem}.{t}"
            options = "-quality 50" if t == "webp" else ""
            res = subprocess.run(f"magick {jpg} {options} {new}", stdout=subprocess.DEVNULL, shell=True, check=True)
    print([f for f in wd.iterdir()])


def upload(wd):
    wd = Path(wd.name)
    for file in wd.iterdir():
        if file.suffix == '.jpg':
            continue

        res = subprocess.run(f"b2 upload-file maxcrone-org {file} img/{file.name}", stdout=subprocess.DEVNULL, shell=True, check=True)


def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} avif|webp|all")
        return

    target = sys.argv[1]
    if target == "all":
        target = ["avif", "webp"]
    elif target in ["avif", "webp"]:
        target = [target]
    else:
        print(f"Usage: {sys.argv[0]} avif|webp|all")
        return

    all_files = subprocess.run("b2 ls maxcrone-org img", shell=True, check=True, capture_output=True, encoding="utf-8").stdout.splitlines()
    jpgs = [f for f in all_files if f.endswith(".jpg")]
    wd = download(jpgs)
    transcode(wd, target)
    upload(wd)


if __name__ == "__main__":
    main()
