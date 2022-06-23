view: order_type_metrics {
  derived_table: {
    sql: SELECT
          Order_Type,
          sum(original_D0_accuracy_1) as original_D0_accuracy_1_count,
          sum(original_D0_accuracy_not_9999) as original_D0_accuracy_not_9999_count,
          sum(original_D2_accuracy_1) as original_D2_accuracy_1_count,
          sum(original_D2_accuracy_not_9999) as original_D2_accuracy_not_9999_count,
          sum(original_D0_precision_1) as original_D0_precision_1_count,
          sum(original_D0_precision_not_9999) as original_D0_precision_not_9999_count,
          sum(original_D2_precision_1) as original_D2_precision_1_count,
          sum(original_D2_precision_not_9999) as original_D2_precision_not_9999_count
          sum(original_GI_accuracy_1) as original_GI_accuracy_1_count,
          sum(original_GI_accuracy_not_9999) as original_GI_accuracy_not_9999_count,
          sum(original_recommended_accuracy_1) as original_recommended_accuracy_1_count,
          sum(original_recommended_accuracy_not_9999) as original_recommended_accuracy_not_9999_count
        FROM
          atp_accuracy_performance_v3
        WHERE
          RECORDSOURCE_Description = 'SAP MARS'
        GROUP BY
            Order_Type
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.Order_Type ;;
  }

  dimension: original_D0_accuracy_1_count {
    type: number
    sql: ${TABLE}.original_D0_accuracy_1_count ;;
  }

  dimension: original_D0_accuracy_not_9999_count {
    type: number
    sql: ${TABLE}.original_D0_accuracy_not_9999_count ;;
  }

  dimension: original_D2_accuracy_1_count {
    type: number
    sql: ${TABLE}.original_D2_accuracy_1_count ;;
  }

  dimension: original_D2_accuracy_not_9999_count {
    type: number
    sql: ${TABLE}.original_D2_accuracy_not_9999_count ;;
  }

  dimension: original_D0_precision_1_count {
    type: number
    sql: ${TABLE}.original_D0_precision_1_count ;;
  }

  dimension: original_D0_precision_not_9999_count {
    type: number
    sql: ${TABLE}.original_D0_precision_not_9999_count ;;
  }

  dimension: original_D2_precision_1_count {
    type: number
    sql: ${TABLE}.original_D2_precision_1_count ;;
  }

  dimension: original_D2_precision_not_9999_count {
    type: number
    sql: ${TABLE}.original_D2_precision_not_9999_count ;;
  }

  dimension: original_GI_accuracy_1_count {
    type: number
    sql: ${TABLE}.original_GI_accuracy_1_count ;;
  }

  dimension: original_GI_accuracy_not_9999_count {
    type: number
    sql: ${TABLE}.original_GI_accuracy_not_9999_count ;;
  }

  dimension: original_recommended_accuracy_1_count {
    type: number
    sql: ${TABLE}.original_recommended_accuracy_1_count ;;
  }

  dimension: original_recommended_accuracy_not_9999_count {
    type: number
    sql: ${TABLE}.original_recommended_accuracy_not_9999_count ;;
  }

  set: detail {
    fields: [
      order_type,
      original_D0_accuracy_1_count,
      original_D0_accuracy_not_9999_count,
      original_D2_accuracy_1_count,
      original_D2_accuracy_not_9999_count,
      original_D0_precision_1_count,
      original_D0_precision_not_9999_count,
      original_D2_precision_1_count,
      original_D2_precision_not_9999_count,
      original_GI_accuracy_1_count,
      original_GI_accuracy_not_9999_count,
      original_recommended_accuracy_1_count,
      original_recommended_accuracy_not_9999_count
    ]
  }
}
