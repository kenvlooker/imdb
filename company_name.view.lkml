view: company_name {
  sql_table_name: imdb.company_name ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: imdb_id {
    type: number
    sql: ${TABLE}.imdb_id ;;
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

  dimension: name_pcode_sf {
    type: string
    sql: ${TABLE}.name_pcode_sf ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
