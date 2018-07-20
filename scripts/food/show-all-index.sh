curl "http://localhost:4741/foods" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
