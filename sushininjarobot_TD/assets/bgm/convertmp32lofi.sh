for f in *.mp3
do
    mv ${f} high_${f}
    echo ffmpeg -loglevel error -i high_${f} -vn -ac 1 -ab 64k ${f}
    ffmpeg -loglevel error -i high_${f} -vn -ac 1 -ab 64k ${f}
done
