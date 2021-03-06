{
  name: 'stripe_discounts',
  hidden: false,
  target: std.mergePatch(std.extVar('schema'), { table: 'discounts' }),
  mappings: {
    eventTimestamp: 'received_at',
  },
  category: 'Stripe',
  dimensions: {
    id: {
      pivot: false,
      type: 'string',
      column: 'id',
      hidden: false,
    },
    received_at: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'received_at',
      hidden: false,
    },
    coupon_id: {
      pivot: false,
      type: 'string',
      column: 'coupon_id',
      hidden: false,
    },
    customer_id: {
      pivot: false,
      type: 'string',
      column: 'customer_id',
      hidden: false,
    },
    start: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'start',
      hidden: false,
    },
    subscription: {
      pivot: false,
      type: 'string',
      column: 'subscription',
      hidden: false,
    },
    uuid_ts: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'uuid_ts',
      hidden: false,
    },
    _end: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: '_end',
      hidden: false,
    },
  },
  measures: {
    count_all_rows: {
      description: 'Counts All Rows',
      aggregation: 'count',
      type: 'double',
      hidden: false,
    },
  },
}
