PURCHASE_SCHEMA = {
  type: :object,
  properties: {
    id: { type: :string, example: '1' },
    type: { type: :string, example: 'purchase' },
    attributes: {
      type: :object,
      properties: {
        expires_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true },
        price: { type: :float, example: 6.66 },
        user_id: { type: :integer, example: 666, 'x-nullable': true },
        purchasable_id: { type: :integer, example: 666, 'x-nullable': true },
        purchasable_type: { type: :string, example: 'Some purchasable_type', 'x-nullable': true },
        active: { type: :boolean, example: true, 'x-nullable': true },
        created_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true },
        updated_at: { type: :string, example: '1984-06-04 09:00', 'x-nullable': true },
        video_quality: { type: :string, example: 'Some video_quality' }
      },
      required: %i[
        price
        video_quality
      ]
    }
  },
  required: %i[
    id
    type
    attributes
  ]
}

PURCHASES_COLLECTION_SCHEMA = {
  type: 'object',
  properties: {
    data: {
      type: 'array',
      items: { '$ref' => '#/definitions/purchase' }
    }
  },
  required: [
    :data
  ]
}

PURCHASE_RESOURCE_SCHEMA = {
  type: 'object',
  properties: {
    data: { '$ref' => '#/definitions/purchase' }
  },
  required: [
    :data
  ]
}
