from rendercv.api import *
from rendercv.renderer import *

from pathlib import Path
import os

yamlfile = Path(os.getenv("yamlfile") or input("Enter yaml file path: ")).resolve()
outputfile = Path(os.getenv("outputfile") or input("Enter out path: ")).resolve()
create_a_typst_file_from_a_yaml_string(open(yamlfile).read(), outputfile)
try:
    create_a_pdf_from_a_yaml_string(open(yamlfile).read(), Path("./test.pdf"))
except Exception as e:
    print(f"Failed with {e}")
