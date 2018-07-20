curl "http://localhost:4741/foods/${ID}" \
--include \
--request DELETE \
--header "Authorization: Token token=${TOKEN}"
