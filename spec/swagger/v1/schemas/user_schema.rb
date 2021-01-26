USER_SCHEMA = {
  type: :object,
  properties: {
    id: { type: :string, example: '1' },
    type: { type: :string, example: 'user' },
    attributes: {
      type: :object,
      properties: {
        email: { type: :string, example: 'Some email' },
        created_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true },
        updated_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true }
      },
      required: [
        :email
      ]
    }
  },
  required: %i[
    id
    type
    attributes
  ]
}

USERS_COLLECTION_SCHEMA = {
  type: 'object',
  properties: {
    data: {
      type: 'array',
      items: { '$ref' => '#/definitions/user' }
    }
  },
  required: [
    :data
  ]
}

USER_RESOURCE_SCHEMA = {
  type: 'object',
  properties: {
    data: { '$ref' => '#/definitions/user' }
  },
  required: [
    :data
  ]
}
