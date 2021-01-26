API_V1 = {
  swagger: '2.0',
  info: {
    title: 'API V1',
    version: 'v1'
  },
  basePath: '/api/v1',
  definitions: {
    purchase: PURCHASE_SCHEMA,
    purchases_collection: PURCHASES_COLLECTION_SCHEMA,
    purchase_resource: PURCHASE_RESOURCE_SCHEMA,
    user: USER_SCHEMA,
    users_collection: USERS_COLLECTION_SCHEMA,
    user_resource: USER_RESOURCE_SCHEMA,
    season: SEASON_SCHEMA,
    seasons_collection: SEASONS_COLLECTION_SCHEMA,
    season_resource: SEASON_RESOURCE_SCHEMA,
    movie: MOVIE_SCHEMA,
    movies_collection: MOVIES_COLLECTION_SCHEMA,
    movie_resource: MOVIE_RESOURCE_SCHEMA,
  }
}
