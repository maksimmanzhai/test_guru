class GistQuestionService
  
  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
  end

  def call
    public: true,
    files: {
      'test-guru-question': {
        content: gist: gist_content
      }
    }
  end

  private

  def gist_params
    {
      description: I18n.t('.question_of_the_test', test_title: @test.title),
      files: {
        'test-guru-question.txt' => {
          content: gist_content
        }
      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:title)
    content.join("\n")
  end
end
