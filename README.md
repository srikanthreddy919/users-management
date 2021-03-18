# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

```ruby
ruby >= 2.6.3
```

- Bundle install

```
bundle install
```

- Create database & Migrate

```ruby
rake db:create db:migrate db:seed
```

- export env variables
- To generate secret key

```ruby
bundle exec rake secret
```

```env
export DEVISE_SECRET_KEY=generated_secret_key
```

- For `sign in` request

```http
POST http://localhost:3000/admins/sign_in
```

> required params `username` and `password`

```json
{
  "admin": {
    "username": "admin@example.com",
    "password": "password"
  }
}
```

- For `sign out` admin

```http
DELETE http://localhost:3000/admins/sign_out
```

- after successfull signin request, copy the token from Authorization header and send along with all the requests

> as ` Bearer your_token`

- For list of users

```http
GET http://localhost:3000/api/v1/users
```

- To Create user

```http
POST http://localhost:3000/api/v1/users
```

- Sample user Object for creation

```json
{
  "user": {
    "email": "sample@example.com",
    "name": "sample name",
    "phone": "888888822",
    "status": "active"
  }
}
```

- For update user

```http
PUT/PATCH http://localhost:3000/api/v1/users/:id
```

- Payload

```json
{
  "user": {
    "email": "sample@example.com",
    "name": "sample name",
    "phone": "888888844",
    "status": "active"
  }
}
```

- For delete user

```http
DELETE http://localhost:3000/api/v1/users/:id
```
