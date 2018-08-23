module Pages
  module Typeform
    module Examples
      class Question1
        include PageObject

        list_item(:correct_answer, id: '44109523')
        list_item(:incorrect_answer, id: '44109526')

        div(:question, class: 'question')
      end

      class ImpossibleQuizPage
        include PageObject
        page_url("https://impossiblequiz.typeform.com/to/GCHHNY")

        div(:start, class: ['button', 'general', 'full', 'enabled'])
        span(:correct, text: "Correct!")

        page_section(:question_1, Question1, id: '34764643')
      end
    end
  end
end
