connection: "presto-pinot"

persist_for: "0 seconds"

# include all the views
include: "/views/**/*.view"

datagroup: atp_accuracy_perf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
}

explore: atp_accuracy_performance_v3 {
  persist_for: "0 seconds"
}

explore: metrics_by_franchise_daily {
  persist_for: "0 seconds"
}

explore: order_type_metrics{
  persist_for: "0 seconds"
}

explore: order_rate_daily {
  persist_for: "0 seconds"
}
