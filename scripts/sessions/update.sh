#!/bin/bash

curl "http://localhost:4741/sessions/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "session": {
      "program": "'"${PROGRAM}"'",
      "session_date": "'"${DATE}"'",
      "session_rating": "'"${RATING}"'",
      "helm": "'"${HELM}"'",
      "crew": "'"${CREW}"'",
      "wind_dir": "'"${DIR}"'",
      "wind_strength": "'"${STRENGTH}"'",
      "chop": "'"${CHOP}"'",
      "objective_1": "'"${OBJ_1}"'",
      "objective_2": "'"${OBJ_2}"'",
      "objective_3": "'"${OBJ_3}"'",
      "objective_4": "'"${OBJ_4}"'",
      "objective_5": "'"${OBJ_5}"'",
      "session_report": "'"${REPORT}"'",
      "boat_maint": "'"${BM}"'",
      "boat_maint_info": "'"${BMI}"'"
    }
  }'

echo
