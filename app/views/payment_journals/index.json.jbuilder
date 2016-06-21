json.array!(@payment_journals) do |payment_journal|
  json.extract! payment_journal, :id, :description, :amount
  json.url payment_journal_url(payment_journal, format: :json)
end
