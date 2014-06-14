import Ember from 'ember';

var IndexRoute = Ember.Route.extend({
  queryParams: {
    search: { refreshModel: true }
  },

  model: function(params) {
    console.log(params);
    return this.store.findQuery('question', params);
  }
});

export default IndexRoute;
