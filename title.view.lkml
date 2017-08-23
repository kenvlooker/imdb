view: title {
  sql_table_name: imdb.title ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: episode_nr {
    type: number
    sql: ${TABLE}.episode_nr ;;
  }

  dimension: episode_of_id {
    type: number
    sql: ${TABLE}.episode_of_id ;;
  }

  dimension: imdb_id {
    type: number
    sql: ${TABLE}.imdb_id ;;
  }

  dimension: imdb_index {
    type: string
    sql: ${TABLE}.imdb_index ;;
  }

  dimension: kind_id {
    type: number
    sql: ${TABLE}.kind_id ;;
  }

  dimension: md5sum {
    type: string
    sql: ${TABLE}.md5sum ;;
  }

  dimension: phonetic_code {
    type: string
    sql: ${TABLE}.phonetic_code ;;
  }

  dimension: production_year {
    type: number
    sql: ${TABLE}.production_year ;;
  }

  dimension: season_nr {
    type: number
    sql: ${TABLE}.season_nr ;;
  }

  dimension: series_years {
    type: string
    sql: ${TABLE}.series_years ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
