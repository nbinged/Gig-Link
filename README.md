# Gig-Link

<img src="public/assets/hirer-screenshot.png">

 <p><b>GA's Software Engineering Immersive:</b> Project 3</p>
 <p><b>Url:</b> https://gig-link.herokuapp.com</p>
 <p><b>Built by:</b> <a href="https://github.com/nbinged">Nicholas Bingei</a>, <a href="https://github.com/aikchongtan">Aik Chong Tan</a>, <a href="https://github.com/aqilahrajab">Aqilah Rajab</a></p>

## Objective:
With the advent of technology, there has been a rise in gig economy. There are more people who are working as freelancers and more project managers looking into hiring freelancers for short-term projects. However this can be costly especially if it involves a hiring agent. Hence Gig-Link aims to bring freelancers and professionals who are looking for them into a single platform, and connect them seamlessly.

## Functions of the app:

## Approach Taken:
First we came up with a few problem statements, derive the needs and the wants for each idea. Which was 
And testing project feasibility with the idea with user personas and user-flow.

We decided on our project Gig-Link as we felt that there was a greater demand for a product that offers a networking platform between hirers and freelancers.

We split our group roles based on its features. Them mainly being the 2 main personas, hirers and freelancers on how they interact with our app and one managing the backend-development, the models and databases.

## Installation Instructions:
1. Install all the ruby gems that the project requires
```
bundle install
```
2. Create the Postgres db for running on local machines
```
rails db:create
```
3. Creates the tables neccessary to run this project
```
rails db:migrate
```
4. Seed dummy data
```
rails db:seed
```

## Unsolved Problems
- Include a platform for freelancers to feature their links to their portfolios and linked in profile
- Payment system for hirer and freelancers
- Help the freelancers to do timekeeping and scheduling
