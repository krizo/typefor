require "spec_helper"

describe "simple test" do
  include Tasks::Google

  it "go to google page and perform a query" do
    visit(GooglePage)
    search_google_for("Typeform")
  end
end
