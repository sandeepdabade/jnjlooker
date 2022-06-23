view: order_rate_daily {
  derived_table: {
    sql: SELECT
          Order_Creation_Date_str "Order Date", count(*) "Total Orders"
      FROM
        atp_accuracy_performance_v3
      GROUP BY
          Order_Creation_Date_str
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_date {
    type: string
    label: "Order Date"
    sql: ${TABLE}."Order Date" ;;
  }

  dimension: total_orders {
    type: number
    label: "Total Orders"
    sql: ${TABLE}."Total Orders" ;;
  }

  set: detail {
    fields: [order_date, total_orders]
  }
}
