for f in *.mp3
do
    mv ${f} high_${f}
    echo ffmpeg -loglevel error -i high_${f} -vn -ac 1 -ab 64k -ar 44100 ${f}
    ffmpeg -loglevel error -i high_${f} -vn -ac 1 -ab 64k -ar 44100 ${f}
done


# 戻す
# ls -1 high_* | perl -lne 'm{high_(.*)}; print qx{mv $_ $1}'
