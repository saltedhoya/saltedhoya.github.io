for f in *.wav
do
    ffmpeg -i ${f} -af loudnorm ${f/wav/mp3}
done
