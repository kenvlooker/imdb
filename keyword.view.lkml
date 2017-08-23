view: keyword {
  sql_table_name: imdb.keyword ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: phonetic_code {
    type: string
    sql: ${TABLE}.phonetic_code ;;
  }

  measure: count {
    type: count
    drill_fields: [id, movie_keyword.count]
  }
}
