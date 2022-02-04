# Endpoints

## Quiz

#### `GET /api/v1/quizzes`
#### RESPONSE

```
STATUS: 200
{"quizzes": [
{
     id: '1',
user_id: '1' (always 1 for now),
   type: 'multi',
subject: 'Math',
  topic: 'division',
  title: 'Division II',
  grade: '4'
}, 
{...}
]
```

#### `POST /api/v1/quizzes`
##### Required Body Content:

```
{
  subject: 'Math',
  topic: 'division',
  title: 'Division II',
  grade: '4',
  user_id: '1' (always 1 for now),
  questions: [
      {
        questionText: 'what is 8 / 4',
        correctAnswer: '2',
        possibleAnswers: [
          '4',
          '6',
          '2',
          '11'
        ]
      },
      {
        questionText: 'what is 6 / 2',
        correctAnswer: '3',
        possibleAnswers: [
          '12',
          '22',
          '2',
          '3'
        ]
      },
      {
        questionText: 'what is 20 / 4',
        correctAnswer: '5',
        possibleAnswers: [
          '4',
          '5',
          '10',
          '6'
        ]
      }
  ]
}
```

#### RESPONSE

```
STATUS: 200
{ data:
  { 
    id: 1,
    message: 'Quiz has been created!'
  }
}
```

#### `GET /api/v1/quizzes/:id`
#### RESPONSE
(param is :id of multiple choice quiz the user selected)
```
STATUS: 200
{"quiz": [
{
  id: '1',
  user_id: '1' (always 1 for now)
  type: 'multi',
  subject: 'Math',
  topic: 'division',
  title: 'Division II',
  grade: '4',
  questions: [
      {
        questionText: 'what is 8 / 4',
        correctAnswer: '2',
        possibleAnswers: [
          '4',
          '6',
          '2',
          '11'
        ]
      },
      {
        questionText: 'what is 6 / 2',
        correctAnswer: '3',
        possibleAnswers: [
          '12',
          '22',
          '2',
          '3'
        ]
      },
      {
        questionText: 'what is 20 / 4',
        correctAnswer: '5',
        possibleAnswers: [
          '4',
          '5',
          '10',
          '6'
        ]
      }
  ]
}
]
```
