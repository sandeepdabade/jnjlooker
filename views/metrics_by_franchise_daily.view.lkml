view: metrics_by_franchise_daily {
  derived_table: {
    sql: SELECT
          finalClosedDate_str,
          JNJ_Franchise_Description_Harmonized,
          sum(original_D0_accuracy_1) as original_D0_accuracy_1_count,
          sum(original_D0_accuracy_not_9999) as original_D0_accuracy_not_9999_count,
          sum(original_D2_accuracy_1) as original_D2_accuracy_1_count,
          sum(original_D2_accuracy_not_9999) as original_D2_accuracy_not_9999_count,
          sum(original_D0_precision_1) as original_D0_precision_1_count,
          sum(original_D0_precision_not_9999) as original_D0_precision_not_9999_count,
          sum(original_D2_precision_1) as original_D2_precision_1_count,
          sum(original_D2_precision_not_9999) as original_D2_precision_not_9999_count
        FROM
          atp_accuracy_performance_v3
        GROUP BY
          finalClosedDate_str,
          JNJ_Franchise_Description_Harmonized
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: final_closed_date_str {
    type: string
    sql: ${TABLE}.finalClosedDate_str ;;
  }

  dimension: jnj_franchise_description_harmonized {
    type: string
    sql: ${TABLE}.JNJ_Franchise_Description_Harmonized ;;
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

  set: detail {
    fields: [
      final_closed_date_str,
      jnj_franchise_description_harmonized,
      original_D0_accuracy_1_count,
      original_D0_accuracy_not_9999_count,
      original_D2_accuracy_1_count,
      original_D2_accuracy_not_9999_count,
      original_D0_precision_1_count,
      original_D0_precision_not_9999_count,
      original_D2_precision_1_count,
      original_D2_precision_not_9999_count
    ]
  }
}
