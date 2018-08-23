module Tasks
  module Typeform
    module ImpossibleQuiz
      include Pages::Typeform::Examples

      def visit_impossible_quiz_page
        visit(ImpossibleQuizPage)
      end

      def start_quiz
        on(ImpossibleQuizPage).start_element.click
      end

      def check_question1
        expected_question = "Which two country flags differ only in the tint of blue?*"
        wait_for { on(ImpossibleQuizPage).question_1.question}
          .to eq expected_question
      end

      def answer_question1(correctly: true)
        if correctly
          on(ImpossibleQuizPage).question_1.correct_answer_element.click
        else
          on(ImpossibleQuizPage).question_1.incorrect_answer_element.click
        end
      end

      def check_correct_answer
        wait_for(on(ImpossibleQuizPage).correct_element.exists?).to be_truthy
      end
    end
  end
end
