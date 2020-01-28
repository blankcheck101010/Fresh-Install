import plistlib
import os.path
from xml.etree import ElementTree as ET

PREFERENCE_DIR = os.path.join(os.getenv("HOME"), "Library/Preferences")


def partial_read_plist(filepath, *args):
    with open(filepath, 'rb') as fp:
        pl = plistlib.load(fp)
        for arg in args:
            pl = pl[arg]
        print(pl)


def read_plist(filepath):
    with open(filepath, 'rb') as fp:
        pl = plistlib.load(fp)
        return pl


def write_plist(filepath, pl):
    with open(filepath, 'wb') as fp:
        plistlib.dump(pl, fp)


### TERMINAL ###

filename = "com.apple.Terminal.plist"
filepath = os.path.join(PREFERENCE_DIR, filename)

# partial_read_plist(filepath, 'Window Settings', 'Pro', 'BackgroundColor')

content = read_plist(filepath)

# Here, make the changes to your plist dictionary

# set pro as default window settings
content["Default Window Settings"] = "Pro"
content["Startup Window Settings"] = "Pro"

# set font alias to true
content["Window Settings"]["Pro"]["FontAntialias"] = True

# increase background opacity of pro to 92%
content["Window Settings"]["Pro"]["BackgroundColor"] = b'bplist00\xd4\x01\x02\x03\x04\x05\x06\x15\x16X$versionX$objectsY$archiverT$top\x12\x00\x01\x86\xa0\xa3\x07\x08\x0fU$null\xd3\t\n\x0b\x0c\r\x0eWNSWhite\\NSColorSpaceV$classG0 0.92\x00\x10\x03\x80\x02\xd2\x10\x11\x12\x13Z$classnameX$classesWNSColor\xa2\x12\x14XNSObject_\x10\x0fNSKeyedArchiver\xd1\x17\x18Troot\x80\x01\x08\x11\x1a#-27;AHP]dlnpu\x80\x89\x91\x94\x9d\xaf\xb2\xb7\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb9'

# change font
content["Window Settings"]["Pro"]["Font"] = b'bplist00\xd4\x01\x02\x03\x04\x05\x06\x18\x19X$versionX$objectsY$archiverT$top\x12\x00\x01\x86\xa0\xa4\x07\x08\x11\x12U$null\xd4\t\n\x0b\x0c\r\x0e\x0f\x10VNSSizeXNSfFlagsVNSNameV$class#@&\x00\x00\x00\x00\x00\x00\x10\x10\x80\x02\x80\x03^SFMono-Regular\xd2\x13\x14\x15\x16Z$classnameX$classesVNSFont\xa2\x15\x17XNSObject_\x10\x0fNSKeyedArchiver\xd1\x1a\x1bTroot\x80\x01\x08\x11\x1a#-27<BKR[birtvx\x87\x8c\x97\xa0\xa7\xaa\xb3\xc5\xc8\xcd\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcf'

# Open with bash (instead of zs which is default in Catalina)
content["Shell"] = '/bin/bash'

write_plist(filepath, content)
