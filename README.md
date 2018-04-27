# CoCanvas App


[CoCanvas](https://co-canvas.herokuapp.com/#0) is a cooperative, pixel art drawing game by Katrina Hayes, Mandy Tang, Rob Harkness and Vu Le. Register an account to make 8-bit art with your friends, or take over their pixels (we won't judge). If you make something awesome, let us know!

![CoCanvas Screenshot](https://github.com/amandytang/cocanvas-server/blob/master/app/assets/images/screenshot.png)
<br/>

## Features
* Live multiplayer drawing on canvas via WebSockets and Action Cable
* Live chat implemented in React also using WebSockets and Action Cable
* User registration using JSON web tokens
* Colourpicker with most recent colours saved

## Possible Improvements
* Private group canvases
* Timelapse gif of canvas
* Adding emoji picker to the chat
* Decrease loading time (caching or reducing coordinate loading time)

## Technologies Used
### Server
* Ruby on Rails
* PostgreSQL
* bcrypt
* Redis for deployment to Heroku
* Action Cable

### Front End
The front end is a basic Node.js app using Express.js to create a server that is deployed to Heroku. This uses Webpack to build all the dependencies for deployment.
* Canvas
* jQuery
* React
* Animate.css

## Acknowledgements
A big thanks to Joel, John and Theo at GA.

## License
Licensed under MIT.
