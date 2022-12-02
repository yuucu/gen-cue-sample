

# generate cue from go struct
gen:
	cue get go def.go 

# export json
ex:
	cue export data.cue
