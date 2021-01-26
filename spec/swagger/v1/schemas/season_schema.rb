SEASON_SCHEMA = {
  type: :object,
  properties: {
    id: { type: :string, example: '1' },
    type: { type: :string, example: 'season' },
    attributes: {
      type: :object,
      properties: {
        title: { type: :string, example: 'Some title' },
        plot: { type: :string, example: 'Some plot' },
        number: { type: :integer, example: 666 },
        created_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true },
        updated_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true }
      },
      required: %i[
        title
        plot
        number
      ]
    }
  },
  required: %i[
    id
    type
    attributes
  ]
}

SEASONS_COLLECTION_SCHEMA = {
  type: 'object',
  properties: {
    data: {
      type: 'array',
      items: { '$ref' => '#/definitions/season' }
    }
  },
  required: [
    :data
  ]
}

SEASON_RESOURCE_SCHEMA = {
  type: 'object',
  properties: {
    data: { '$ref' => '#/definitions/season' }
  },
  required: [
    :data
  ]
}
