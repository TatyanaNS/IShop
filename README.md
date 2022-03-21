# IShop

This web application consist of:
1. Registration of new users
2. User's autorization
3. CRUD operations on objects

Product
 - UUID id
 - String name
 - BigDecimal price

Producer
 - UUID id
 - String name
 - List\<Product\> products

Role
 - UUID id
 - String name

User
 - UUID id
 - String email
 - String password
 - String firstName
 - String lastName
 - List<Role> roles
### RUNNING PROFILES
There are three profiles for running:
| profile | description |
| ------ | ------ |
|dev|default profile use in-memory DB H2|
|prod|profile use DB PostgreSQL|
### INSTRUCTIONS FOR RUNNING application locally:
- Customize application.yaml according to chosen DB configuration.
Environment variables: URL, USER_NAME, DB_PASSWORD
- Use http://localhost:8080/ to reach the application.
- User with role admin - login: admin@gmail.com, password: admin.
