# curl "http://api.petfinder.com/subsystem.method" \
#   --include \
#   --request GET \
#   --header "Authorization: Token token=${TOKEN}" \
#   # --header "Content-Type: application/json" \
#   --data '{
#     "shelter.find": {
#       "key": "'"4e7ed7382fc8429bc103b2e8a8d4e193"'",
#       "location": "'"${ZIP}"'",
#       "format": "'"json"'"
#     }
#   }'
#
# echo

curl "http://localhost:4741/petfinder/${LOCATION}" \
  --include \
  --request GET \
  # --header "Content-Type: application/json" \
