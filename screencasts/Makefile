all: gource

gource:
#       Gource expects the actual gitdir in side the working tree.
	@cd magit; git pull; cd -
	@gource --path magit \
	  --seconds-per-day 0.1 --auto-skip-seconds 0.7 \
	  --hide mouse,progress \
	  --file-idle-time 0 --max-files 0 \
	  --title "Magit development July 2008 - November 2016" \
	  --highlight-users --user-image-dir ../_site/img/avatars \
	  -1280x720 --output-ppm-stream - --output-framerate 30 | \
	ffmpeg -y -i - -r 30 -b:v 65536K \
	  -f image2pipe -vcodec libx264 magit-gource.mkv
