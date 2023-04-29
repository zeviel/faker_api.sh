#!/bin/bash

api="https://fakerapi.it/api/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_person() {
  # 1 - quantity: (integer): <quantity - default: 1>
  curl --request GET \
    --url "$api/persons?_quantity=${1:-1}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}

function get_address() {
  # 1 - quantity: (integer): <quantity - default: 1>
  # 2 - country_code: (string): <country_code - default: null>
  curl --request GET \
    --url "$api/addresses?_quantity=${1:-1}&_countryCode=${2:-null}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}

function get_company() {
  # 1 - quantity: (integer): <quantity - default: 1>
  curl --request GET \
    --url "$api/companies?_quantity=${1:-1}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}

function get_date() {
  # 1 - quantity: (integer): <quantity - default: 1>
  # 2 - from: (string): <from - default: null>
  # 3 - to: (string): <to - default: null>
  # 4 - timezone: (string): <timezone - default: null>
  curl --request GET \
    --url "$api/dates?_quantity=${1:-1}&_from=${2:-null}&_to=${3:-null}&_timezone=${4:-null}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}

function get_finance() {
  # 1 - quantity: (integer): <quantity - default: 1>
  # 2 - type: (string): <type - default: null>
  curl --request GET \
    --url "$api/financials?_quantity=${1:-1}&_type=${2:-null}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}

function get_text() {
  # 1 - quantity: (integer): <quantity - default: 1>
  # 2 - min_length: (integer): <min_length - default: 5>
  # 3 - max_length: (integer): <max_length - default: 50>
  # 4 - type: (string): <type - default: null>
  curl --request GET \
    --url "$api/texts?_quantity=${1:-1}&_minLength=${2:-5}&_maxLength=${3:-50}&_type=${4:-null}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}
