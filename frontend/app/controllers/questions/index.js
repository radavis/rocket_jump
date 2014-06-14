import Ember from 'ember';

export default Ember.ArrayController.extend({
  queryParams: ['search'],
  search: null,
  searchField: Ember.computed.oneWay('search'),

  // filteredQuestions: function() {
  //   var query = this.get('query');
  //   var questions = this.get('model');
  //
  //   if (query) {
  //     return questions;
  //   } else {
  //     return questions;
  //   }
  // }.property('query'),

  actions: {
    search: function() {
      this.set('search', this.get('searchField'));
    }
  }
});
