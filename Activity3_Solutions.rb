# Problem 1
def extract_urls(text)
    pattern = /https?|ftp:\/\//
    text.scan(pattern) 
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at
https://example.com/search?q=ruby+regex. Don’t forget to ftp our
resources at ftp://example.com/resources."

p extract_urls(sample_text)

# Problem 2
def parse_invoices(invoice_data)
    pattern = /(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$[\d]+)/
    invoice_data.match?(pattern)
end
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

p parse_invoices(invoice_entries)