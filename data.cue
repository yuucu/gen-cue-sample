package root

import (
	"github.com/yuucu/gen-cue-sample/cue.mod/gen/command-line-arguments:main"
)

me: main.#User & {
	name: "yuucu"
	age:  18
}
