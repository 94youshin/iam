package apiserver

import "github.com/gin-gonic/gin"

func Run() error {
	r := gin.Default()
	r.GET("/hello", func(c *gin.Context) { c.String(200, "Hello, i'm iam apiserver") })
	return r.Run()
}
