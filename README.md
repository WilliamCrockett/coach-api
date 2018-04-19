# Welcome to Coach
## A simple web app designed to help you manage your training sessions
### Currently designed for the RSA Olympic Sailing team. I plan to extend it to other sports in the future.

### [link to api] (https://github.com/WilliamCrockett/coach-api)
### [link to deployed-api] (https://coach-api.herokuapp.com/)
### [link to deployed version] (https://coach.iamwilliam.co.za)

___

## Technologies Used:

* Ruby
* Rails
* PostgreSQL

## Premise

After years of working with the RSA Olympic Sailing Team, I wanted to build something
that would prove useful for tracking and reviewing training sessions. Hence I've built
this simple web-app which allows users to create and view sessions. I intend to have this
as a closed deployment initially, where users must be pre-approved to access the site.
But an extension of this will include the ability to create Organizations, and users within
Organizations.

## API End Points

| Verb   | URI Pattern                 | Controller#Action         |
|--------|-----------------------------|---------------------------|
| POST   | `/sign-up`                  | `users#signup`            |
| POST   | `/sign-in`                  | `users#signin`            |
| DELETE | `/sign-out`                 | `users#signout`           |
| PATCH  | `/change-password`          | `users#changepw`          |
| GET    | `/sessions`                 | `sessions#index`          |
| GET    | `/sessions/:id`             | `sessions#show`           |
| POST   | `/sessions`                 | `sessions#create`         |
| PATCH  | `/sessions/:id`             | `sessions#update`         |
| DELETE | `/sessions/:id`             | `sessions#destroy`         |


## Known issues

* none currently


## Future release roadmap:

* Export session to PDF
* Graphs and searches (things like program doing the most sessions, average sessions per week). As well as things like ‘get me all the sessions where the rating was 4 or better' type thing
* A race mode. Log information from a race, including different legs and write info on a per-leg basis.
* And results from the day’s mini-series
* Individual objective raating. (currently you can rate the overall session. Allow user to be able to rate each session objective.)
* Stretch/dream goal - integrate with smart watch data for calorie information.
* A mobile app so you can capture a session from your phone, including photo upload. So a coach can log the session as the day is going. Uploads photos from phone as the day is going, etc. This is also a stretch/dream goal.

## Planning information

### [ERD](https://imgur.com/vqL10E8)
