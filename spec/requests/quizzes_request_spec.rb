require 'rails_helper'

describe 'Quizzes API' do
  let(:user) { create(:user)}
  let(:quiz_params) do
    {
      'subject': 'Economics',
      'topic': 'Supply and Demand',
      'title': 'Prices Quiz II',
      'grade': '12',
      'user_id': user.id.to_s
    }
  end

  let(:question_params) do
      { questions: 
        [
      {
        'questionText': 'what is 8 / 4',
        'questionType': 'multi',
        'correctAnswer': '2',
        'possibleAnswers': [
          '4',
          '6',
          '2',
          '11'
                           ]
      },
      {
        'questionText': 'what is 6 / 2',
        'questionType': 'TF',
        'correctAnswer': '3',
        'possibleAnswers': [
          '12',
          '22',
          '2',
          '3'
                           ]
      }
      ]
     
    }
  end
  let(:headers) do
    {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
  end

  it 'lets the frontend create a multiple choice quiz without questions' do
    post '/api/v1/quizzes', headers: headers, params: quiz_params.to_json
    
    expect(response.status).to eq(201)

    quiz = JSON.parse(response.body, symbolize_names: true)

    expect(quiz).to have_key(:data)
    expect(quiz[:data]).to have_key(:id)
    # expect(quiz[:data][:attributes][:message]).to eq('Quiz has been created!')
    expect(quiz[:data][:attributes][:subject]).to eq('Economics')
    expect(quiz[:data][:attributes][:topic]).to eq('Supply and Demand')
    expect(quiz[:data][:attributes][:title]).to eq('Prices Quiz II')
    expect(quiz[:data][:attributes][:grade]).to eq(12)
    expect(quiz[:data][:attributes][:user_id]).to eq(user.id)
  end

  it 'lets the frontend add questions after the creation of a quiz' do
    quiz = create(:quiz)

    patch "/api/v1/quizzes/#{quiz.id}", headers: headers, params: question_params.to_json

    expect(response.status).to eq(201)

    quiz_with_questions = JSON.parse(response.body, symbolize_names: true)

    expect(quiz_with_questions).to have_key(:data)
    expect(quiz_with_questions[:data]).to have_key(:id)
    expect(quiz_with_questions[:data][:id]).to be_a String
    expect(quiz_with_questions[:data]).to have_key(:attributes)
    expect(quiz_with_questions[:data][:attributes]).to have_key(:questions)
    expect(quiz_with_questions[:data][:attributes][:questions]).to be_an Array
    expect(quiz_with_questions[:data][:attributes][:questions]).not_to be_empty
    expect(quiz_with_questions[:data][:attributes][:questions][0]).to have_key(:possibleAnswers)
    expect(quiz_with_questions[:data][:attributes][:questions][0][:possibleAnswers]).to be_an Array
    expect(quiz_with_questions[:data][:attributes][:questions][0][:possibleAnswers].first).to be_a String
  end
end
