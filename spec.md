# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
<!-- Studio has_many RecordingSessions -->
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) 
<!-- RecordingSession belongs_to Client -->
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
<!-- Studio has_many Clients, through: RecordingSessions 
    User has_many RecordingSessions, through: Studios
-->
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
<!-- Studio has_many Clients through: Recording Sessions
     Client has_many Studios through: Recording Sessions
 -->

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
<!-- recordingsession.start_date, .hours_per_day, .per_hour -->
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
<!-- User Client Studio RecordingSession -->
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
<!-- RecordingSession.this_week URL: /recordingsessions/thisweek -->
- [x] Include signup (how e.g. Devise)
 <!--Through Built Rails Methods and Omniauth  -->
- [x] Include login (how e.g. Devise)
 <!--Through Built Rails Methods and Omniauth  -->
- [x] Include logout (how e.g. Devise)
<!--Session#Destroy  -->
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
<!-- Omniauth -->
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
<!-- studio/1/recordingsessions/1 -->
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
<!-- studio/1/recordingsessions/new -->
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
<!-- Error fields and inline error messages below form fields -->
Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
