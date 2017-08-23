view: name {
  sql_table_name: imdb.name ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
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

  dimension: name_pcode_cf {
    type: string
    sql: ${TABLE}.name_pcode_cf ;;
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
