# Code Challenges Project

A React and Ruby on Rails application for coding challenges.

## Setup and Configuration

This project uses:
* Ruby on Rails backend (API)
* React frontend
* PostgreSQL database

## Getting Started

1. Clone the repository
2. Install dependencies for both Rails and React
3. Set up the database:
```bash
rails db:create
rails db:migrate
```

## Running the Application

* Run `rails s` to start both React and Rails servers
* Visit `localhost:3000/` to access the React frontend

## API Structure

The `challenges_controller.rb` implements RESTful API endpoints for CRUD operations:
* GET /api/challenges - List all challenges
* POST /api/challenges - Create new challenge
* GET /api/challenges/:id - Show challenge
* PUT /api/challenges/:id - Update challenge
* DELETE /api/challenges/:id - Delete challenge

## Development

This is a basic setup combining React frontend with Rails API backend. Further features and improvements will be added as the project grows.
