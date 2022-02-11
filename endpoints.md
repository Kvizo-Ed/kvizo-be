# Endpoints

## Quiz

#### `GET /api/v1/quizzes`
#### RESPONSE

```
STATUS: 200
{
  "data": [
    {
      "id": "21",
      "type": "quiz",
      "attributes": {
        "subject": "Economics",
        "topic": "Supply and Demand",
        "title": "Prices Quiz II",
        "grade": 12,
        "user_id": 1,
        "quiz_type": "multi",
        "questions": []
      }
    },
    {
      "id": "22",
      "type": "quiz",
      "attributes": {
        "subject": "Economics",
        "topic": "Supply and Demand",
        "title": "Prices Quiz II",
        "grade": 12,
        "user_id": 1,
        "quiz_type": "multi",
        "questions": []
      }
    }
  ]
}
```

#### `POST /api/v1/quizzes`
##### Required Body Content:

```
{
  "subject": "Economics",
  "topic": "Supply and Demand",
  "title": "Prices Quiz II",
  "grade": "12",
  "user_id": "1" (always 1 for now),
  "quiz_type": "multi"
}
```

#### RESPONSE

```
STATUS: 201
{
  "data": {
    "id": "96",
    "type": "quiz",
    "attributes": {
      "subject": "Economics",
      "topic": "Supply and Demand",
      "title": "Prices Quiz II",
      "grade": 12,
      "user_id": 1,
      "quiz_type": "multi",
      "questions": []
    }
  }
}
```

#### `PATCH /api/v1/quizzes/:quiz_id`

Currently used to add questions to quiz.

##### Required Body Content:

```
{
  "questions": [
    {
      "questionText": "what is 8 / 4",
      "questionType": "multi",
      "correctAnswer": "2",
      "possibleAnswers": [
        "4",
        "6",
        "2",
        "11"
      ]
    },
    {
      "questionText": "what is 6 / 2",
      "questionType": "TF",
      "correctAnswer": "3",
      "possibleAnswers": [
        "12",
        "22",
        "2",
        "3"
      ]
    }
  ]
}
```

#### RESPONSE

```
STATUS: 200
{
  "data": {
    "id": "99",
    "type": "quiz",
    "attributes": {
      "subject": "Economics",
      "topic": "Supply and Demand",
      "title": "Prices Quiz II",
      "grade": 12,
      "user_id": 1,
      "quiz_type": "multi",
      "questions": [
        {
          "questionText": "what is 8 / 4",
          "questionType": "multi",
          "correctAnswer": "2",
          "possibleAnswers": [
            "4",
            "6",
            "2",
            "11"
          ]
        },
        {
          "questionText": "Demand never causes inflation",
          "questionType": "TF",
          "correctAnswer": "False",
          "possibleAnswers": [
            "True",
            "False"
          ]
        }
      ]
    }
  }
}
```

#### `GET /api/v1/quizzes/:id`
#### RESPONSE
(param is :id of multiple choice quiz the user selected)
```
STATUS: 200
{
  "data": {
    "id": "58",
    "type": "quiz",
    "attributes": {
      "subject": "Economics",
      "topic": "Supply and Demand",
      "title": "Prices Quiz II",
      "grade": 4,
      "user_id": 1,
      "quiz_type": "multi",
      "questions": [
        {
          "questionText": "What's inflation?",
          "questionType": "multi",
          "correctAnswer": "A price increase",
          "possibleAnswers": [
            "A price increase",
            "A price decrease",
            "How you fill a balloon",
            "How you pop a balloon"
          ]
        }
      ]
    }
  }
}
```
