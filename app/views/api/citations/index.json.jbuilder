if @citation
  json.citation do
    json.id @citation.id
    json.citation @citation.citation
    json.author @citation.author
    json.exists true
  end
else
  json.citation do
    json.exists false
  end
end