
# goから.cueを扱うsample
run:
	go run src/cmd/main.go

# generate cue from go struct
gen:
	cue get go ./src/def --local

# export json
ex:
	cue export 

# yaml mergeしてみるサンプル
merge:
	cue export ./sample/merge/*.yaml

# generate puml er
er_puml:
	@cue export ./sample/er_table/ -e outPuml --out text

# generate mermaid er
er_md:
	@cue export ./sample/er_table/ -e outMd --out text
