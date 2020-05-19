# Template_API

## Configuration

### Ruby version

2.6.1

### System defaults

- localhost port 3001 set within
  - \_api/config/initializers/cors.rb-ln7
  - \_api/config/puma.rb-ln13

#### Session Cookies for User Auth

- CORS setup with broad range of methods, can be customized per application's needs. File can be found here (\_api/config/initializers/cors.rb)

### Database topology

#### User Model

- Used for user authentication

(_models and associations_)

### Database initialization

(_steps to spin up dB_)

## Deployment

(_steps to deploy local copy of api_)

## Testing

### Sessions Testing

In Terminal,

1. Start rails server (per template config it will run on port 3001)
2. New Terminal Tab type the following:

```shellscript
curl --header "Content-Type: application/json" --request POST --data '{"user":
{"username":"ronkilav", "email":"ronkilav@email.com","password":"asdfasdf"}}'
http://localhost:3001/sessions
```

> It is just easier to type this in Terminal than to try to test api with an application like Postman or Insomnia.

Server response if configuration is correct:

```shellscript
{"status":"created","logged_in":true,"user":{"id":1,"username":"ronkilav","email":"ronkilav@email.com","password_digest":"$2a$12$Fj6ZBybAM15mNdQYeuSzceiKXwH5Knl0VTNmfuU9BxQzyY9yBnncK","created_at":"2020-05-19T20:45:58.288Z","updated_at":"2020-05-19T20:45:58.288Z"}}[16:06:22]
```

### How to run the test suite

(_all steps needed to run full test suite_)

## Links and resources

- [gitHub repo](https://github.com/jbshipman/template_api)
- [Design Docs]()
- [ERModel link](https://my.mindnode.com/H7e2z2zoBpSTP6Mxqfpz3ykivsDkq5VDztpQB6Kr#-229.3,-212.0,2)
- [Edutechnical HTTPS session cookies](https://youtu.be/z18zLCAg7UU)
- [Project Blog]()
- [Project Demo]()
