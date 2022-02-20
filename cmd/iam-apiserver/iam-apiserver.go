package main

import (
	"os"

	"github.com/usmhk/iam/cmd/iam-apiserver/app"
)

func main() {
	cmd := app.NewCommand()
	if err := cmd.Execute(); err != nil {
		os.Exit(1)
	}
}
