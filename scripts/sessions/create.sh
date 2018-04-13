#!/bin/bash

curl "http://localhost:4741/sessions" \
  --include \
  --request POST \
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


# PROGRAM=49er DATE=2018/01/15 RATING=4 HELM=Benji CREW=Burger DIR=NE STRENGTH=10 CHOP=none OBJ_1=speed OBJ_2=obj2 OBJ_3=obj3 OBJ_4=obj4 OBJ_5=obj5 REPORT=SomeTextHere BM=false BMI=none TOKEN=
# PROGRAM=not49er DATE=2018/01/15 RATING=4 HELM=Benji CREW=Burger DIR=NE STRENGTH=10 CHOP=none OBJ_1=speed OBJ_2=obj2 OBJ_3=obj3 OBJ_4=obj4 OBJ_5=obj5 REPORT=SomeTextHere BM=false BMI=none TOKEN=

#


# curl "http://localhost:4741/sessions" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=${TOKEN}" \
#   --data '{
#     "session": {
#       "program": "'"${PROGRAM}"'",
#       "session_date": "'"${DATE}"'",
#       "session_rating": "'"${RATING}"'",
#       "helm": "'"${HELM}"'",
#       "objective_1": "'"${OBJ_1}"'",
#       "session_report": "'"${REPORT}"'",
#       "boat_maint": "'"${BM}"'"
#     }
#   }'
#
# echo
