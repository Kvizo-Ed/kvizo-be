require 'rails_helper'

describe 'Quizzes API' do
  let(:user) { create(:user)}
  let(:params) do
    {
      'subject': 'Economics',
      'topic': 'Supply and Demand',
      'title': 'Prices Quiz II',
      'grade': '12',
      'user_id': user.id.to_s
    }
  end
  let(:headers) do
    {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
  end

  it 'lets a user create a multiple choice quiz without questions' do
    post '/api/v1/quizzes', headers: headers, params: params.to_json
    
    expect(response.status).to eq(201)

    quiz = JSON.parse(response.body, symbolize_names: true)

    expect(quiz).to have_key(:data)
    expect(quiz[:data]).to have_key(:id)
    expect(quiz[:data][:attributes][:message]).to eq('Quiz has been created!')
    expect(quiz[:data][:attributes][:subject]).to eq('Economics')
    expect(quiz[:data][:attributes][:topic]).to eq('Supply and Demand')
    expect(quiz[:data][:attributes][:title]).to eq('Prices Quiz II')
    expect(quiz[:data][:attributes][:grade]).to eq(12)
    expect(quiz[:data][:attributes][:user_id]).to eq(user.id)
  end
end
