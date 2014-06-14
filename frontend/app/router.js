import Ember from 'ember';

var Router = Ember.Router.extend({
  location: RocketJumpENV.locationType
});

Router.map(function() {
  this.resource('questions', { path: '/' }, function() {
  });
  this.route('test');
});

export default Router;
