view: char_name {
  sql_table_name: imdb.char_name ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: imdb_id {
    type: number
    sql: ${TABLE}.imdb_id ;;
  }

  dimension: imdb_index {
    type: string
    sql: ${TABLE}.imdb_index ;;
  }

  dimension: md5sum {
    type: string
    sql: ${TABLE}.md5sum ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_pcode_nf {
    type: string
    sql: ${TABLE}.name_pcode_nf ;;
  }

  dimension: surname_pcode {
    type: string
    sql: ${TABLE}.surname_pcode ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
