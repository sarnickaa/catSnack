
curl "http://localhost:4741/pets/${ID}" \
--include \
--request DELETE \
--header "Authorization: Token token=${TOKEN}"
