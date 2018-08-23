class GooglePage < BasePage
  page_url("https://google.com")

  text_field(:search_input, class: "gsfi")
  element(:search_button, name: "btnK")
end
