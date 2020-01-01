package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if len(os.Args) != 2 {
		help()
		os.Exit(0)
	}

	var arg = os.Args[1]
	if i, err := strconv.Atoi(arg); err != nil {
		help()
	} else {

		var res = Number{Num:i}
		fmt.Println(res.ToRoman())
	}

}

func help() {
	fmt.Println("Usage: Converts a single integer.\ne.g.: \"./ar2rom 10\"")
}
