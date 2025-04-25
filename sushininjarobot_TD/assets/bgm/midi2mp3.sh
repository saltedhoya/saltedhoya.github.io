FILE=${1:-rmn_midi_104.mid}

fluidsynth -i DMG-CPU1.5.SF2 ${FILE} -F ${FILE/.mid/.wav}
ffmpeg -i ${FILE/.mid/.wav} -af loudnorm ${FILE/.mid/.mp3}
