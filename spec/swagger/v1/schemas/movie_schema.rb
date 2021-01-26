MOVIE_SCHEMA = {
  type: :object,
  properties: {
    id: { type: :string, example: '1' },
    type: { type: :string, example: 'movie' },
    attributes: {
      type: :object,
      properties: {
        title: { type: :string, example: 'Some title' },
        plot: { type: :string, example: 'Some plot' },
        created_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true },
        updated_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true }
      },
      required: %i[
        title
        plot
      ]
    }
  },
  required: %i[
    id
    type
    attributes
  ]
}

MOVIES_COLLECTION_SCHEMA = {
  type: 'object',
  properties: {
    data: {
      type: 'array',
      items: { '$ref' => '#/definitions/movie' }
    }
  },
  required: [
    :data
  ]
}

MOVIE_RESOURCE_SCHEMA = {
  type: 'object',
  properties: {
    data: { '$ref' => '#/definitions/movie' }
  },
  required: [
    :data
  ]
}
