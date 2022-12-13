CSV.foreach("./seeder/asins.csv", headers: true) do |row|
  url = "https://www.amazon.com/o/ASIN/#{row['ASIN']}"
  pages << {
    page_type: "products",
    method: "GET",
    headers: {"User-Agent" => "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"},
    url: url,
    force_fetch: true,
    vars: {
      url: url,
      asin: row['ASIN']
    }
  }
end
