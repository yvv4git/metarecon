package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

// versionCmd represents the version command
// go run main.go version
var versionCmd = &cobra.Command{
	Use:   "version",
	Short: "Print version of my program",
	Long: `Эта комманда предназначена дпя отображения информации
	о версии приложения.`,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("v0.1")
	},
}

func init() {
	rootCmd.AddCommand(versionCmd)
}
