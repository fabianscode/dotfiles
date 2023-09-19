from youtubesearchpython import VideosSearch
import subprocess
import json
import sys

videos = VideosSearch(sys.argv[1], limit=int(sys.argv[2])).result()["result"]

print('\n'.join([(video["title"][:60] + "  [" + video["link"] + "]") for video in videos]))
