# Big League Chew
I just wanted to have a memorable name for this project.

Given a total budget, a radius, and a location, this API returns enough leagues to spend up to the budget, sponsoring as many leagues as possible without going over it.
## Installation

This API was meticulously built using Ruby 3.1.0, Rails 7.0.3 and Postgresql.

Installation should be handled with bundle.

```bash
  bundle install
```

## Database and Migrations

There's a small amount of seed data, so make sure you run that after creating your database and running migrations.

```bash
  rails db:create db:migrate db:seed
```

## Starting the app

Start the app with the ole standard
```bash
  rails start
```

I didn't change the default port so you should see this run on `http://localhost/3000`

## API Reference

#### Create League

```http
  POST /api/v1/leagues
```

The body is nested under `league`

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `league_name` | `string` | This is the name of the new League |
| `location` | `string` | Latitude and Longitude co-ordinate as a string separated by a comma |
| `price` | `integer` | Whole number representing how much League sponsorship will cost |

#### Get League - by Budget and Radius

```http
  GET /api/v1/leagues
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `location` | `string` | Latitude and Longitude co-ordinate as a string separated by a comma |
| `budget` | `integer` | Whole number representing how much your budget is |
| `radius` | `integer` | Whole number representing how many miles your Sponsorship zone is |

## Usage/Examples

Sample POST request body if you're using Postman or similar.

```javascript
{
    "league":
    {
        "league_name": "Jimmy John's Baseball League",
        "location": "40.7428,-73.9712",
        "price": 2500
    }
}
```
