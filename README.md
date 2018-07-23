Rails[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# deployed site front-end:

### repository front-end:
https://github.com/sarnickaa/catSnack-client

# deployed site back-end:

### repository back-end:
https://github.com/sarnickaa/catSnack

## Description:

catSnack is a pet-food preference tracker for pet owners.

Keeping tabs on the type of food a pet prefers is difficult especially if pet preferences change over time. Pet food purchases are usually made in bulk quantities meaning that accidentally buying the wrong type of food for a picky pet means wasted time, money and an unhappy critter.

Healthy pets should be given a variety of foods to prevent nutritional deficits (or overloads) and to maintain interest and quality of life. Keeping an easily accessible/updatable list of a pets food preferences will mean owners can be sure they're purchasing food their pet will

 a. actually like and eat (no wasted money/food or time)

 b. allow owners to monitor their pets dietary profile and make adjustments as they deem necessary (i.e. does Abby eat too much tuna-based food? does she hate lamb? does she like tuna+duck but won't touch tuna+shrimp?)

This is an app for pet owners of one or more pets. The 1st iteration will be for cats only but it can be expanded to multiple types of pets. (rename: petSnack)

## ERD's:
![img_4510](https://media.git.generalassemb.ly/user/11649/files/d5803762-8e5b-11e8-8de6-619fe50b3f02)

## Technologies used:

  API:    Ruby on Rails
  Client: JavaScript
          CSS
          HTML5

## Future Iterations:

I would like to look into the Amazon API to see if there's a way I can pull customer reviews for the brands of food users log.

I would also like to spend some time trying to make my UI interface mobile-responsive. The main point of this app is that it is a handy on-the-go means by which pet owners can log food for their pets and that means a mobile interface will be necessary.

I would also like to explore the possibility of a search function to help users access relevant data quickly and in a very specific manner.

### Planning:

My planning process mirrored the suggested schedule closely. The issue queue was instrumental in helping me work through roadblocks as was talking through issues with colleagues.

My process relied on building the API first, testing functionality with curl scripts and then building a UI around that.

My main concerns with this project were:
1. linking the backend to a usable/attractive UI.
2. being able to effectively target and filter data for specific users through CRUD actions.
3. building data relationships that made sense for a user.

In terms of building the API, the trickiest portions for me were customizing and refining my CRUD methods to target the specific data. This mainly stemmed from a lack of deep familiarity with rails-specific syntax.
