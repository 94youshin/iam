package app

import (
	"github.com/spf13/cobra"
	"github.com/usmhk/iam/internal/apiserver"
)

var description = ``

func NewCommand() *cobra.Command {
	cmd := &cobra.Command{
		Use:  "IAM-APIServer",
		Long: description,
		RunE: func(cmd *cobra.Command, args []string) error {
			return apiserver.Run()
		},
	}
	return cmd
}
