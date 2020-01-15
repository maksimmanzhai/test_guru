module CompletedTestsHelper
  def completed_test_header(completed_test)
    "Passing the #{completed_test.test.title} Test"
  end

  def progress(completed_test)
    "Progress: #{completed_test.current_question_index} / #{completed_test.test.questions.count}"
  end

end
