package main

import (
	"fmt"

	"cuelang.org/go/cue/cuecontext"
	"cuelang.org/go/cue/load"
)

func main() {
	ctx := cuecontext.New()

	bis := load.Instances([]string{"./data.cue"}, &load.Config{
		Module: "github.com/yuucu/gen-cue-sample",
	})

	// Loop over the instances, checking for errors and printing
	for _, bi := range bis {
		// check for errors on the instance
		// these are typically parsing errors
		if bi.Err != nil {
			fmt.Println("Error during load:", bi.Err)
			continue
		}

		// Use cue.Context to turn build.Instance to cue.Instance
		value := ctx.BuildInstance(bi)
		if value.Err() != nil {
			fmt.Println("Error during build:", value.Err())
			continue
		}

		// print the error
		fmt.Println("root value:", value)

		// Validate the value
		err := value.Validate()
		if err != nil {
			fmt.Println("Error during validate:", err)
			continue
		}
	}

}
