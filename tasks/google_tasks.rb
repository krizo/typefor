module Tasks
  module Google
    def search_google_for(query)
      on(GooglePage).search_input_element.value = query
      on(GooglePage).search_button_element.click
    end
  end
end
