require 'spec_helper'

describe "Impossible Quiz" do
  include Tasks::Typeform::ImpossibleQuiz

  it "correct answers" do
    visit_impossible_quiz_page
    start_quiz
    check_question1
    answer_question1(correctly: true)
    check_correct_answer
  end
end
