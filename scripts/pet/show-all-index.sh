curl "http://localhost:4741/pets" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
