module CompletedTestsHelper
  def completed_test_header(completed_test)
    t('.passing', title: completed_test.test.title)
  end

  def progress(completed_test)
    "#{t('.progress')}: #{completed_test.current_question_index} / #{questions_total(completed_test)}"
  end

  def result_percent(completed_test)
    (completed_test.correct_questions.to_f / questions_total(completed_test) * 100)
  end

  def completed_test_status(completed_test)
    if result_percent(completed_test) >= minimal_percent
      t('.test_successful')
    else
      t('.test_failed')
    end
  end

  def completed_color_result(completed_test)
    if result_percent(completed_test) >= minimal_percent
      'green'
    else
      'red'
    end
  end

  def completed_test_result(completed_test)
    result_percent = result_percent(completed_test)
    message = "#{completed_test_status(completed_test)} #{result_percent}%"
    messge_color = completed_color_result(completed_test)
    tag.span message, style: ["color: #{messge_color}"]
  end

  private

  def questions_total(completed_test)
    completed_test.test.questions.count
  end

  def minimal_percent
    85
  end

end
