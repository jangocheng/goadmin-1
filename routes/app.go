package routes

import (
	"github.com/iiinsomnia/goadmin/controllers"
	"github.com/iiinsomnia/goadmin/middlewares"

	"github.com/gin-gonic/gin"
)

// RouteRegister register routes
func RouteRegister(e *gin.Engine) {
	e.GET("/login", controllers.Login)
	e.POST("/login", controllers.Login)
	e.GET("/captcha", controllers.Captcha)
	e.GET("/404", controllers.NotFound)
	e.GET("/500", controllers.InternalServerError)

	root := e.Group("/")
	root.Use(middlewares.Auth())
	{
		root.GET("/", controllers.Home)
		root.GET("/logout", controllers.Logout)
		// user
		root.GET("/users", controllers.UserIndex)
		// password
		root.GET("/password/change", controllers.PasswordChange)

		logger := root.Group("/")
		logger.Use(middlewares.Logger())
		{
			// user
			logger.POST("/users/query", controllers.UserQuery)
			logger.POST("/users/add", controllers.UserAdd)
			logger.POST("/users/edit", controllers.UserEdit)
			logger.POST("/users/delete", controllers.UserDelete)
			// password
			logger.POST("/password/change", controllers.PasswordChange)
			logger.POST("/password/reset", controllers.PasswordReset)
		}
	}
}
