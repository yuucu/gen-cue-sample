
# generate cue from go struct
gen:
	cue get go ./src/def --local

# export json
ex:
	cue export 

# yaml mergeしてみるサンプル
merge:
	cue export ./sample/merge/*.yaml
