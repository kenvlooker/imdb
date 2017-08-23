connection: "imdb"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: cast_info {}

explore: char_name {}

explore: company_name {}

explore: keyword {}

explore: movie_companies {}

explore: movie_info {}

explore: movie_keyword {
  join: keyword {
    type: left_outer
    sql_on: ${movie_keyword.keyword_id} = ${keyword.id} ;;
    relationship: many_to_one
  }
}

explore: name {}

explore: title {}
