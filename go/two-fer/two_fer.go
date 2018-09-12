// Package twofer gives one thing to you and one to me
package twofer

import "fmt"

// ShareWith either a named or default individual
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
