# Endpoints


POST multis
GET quizzes
GET multis



## Quiz
- POST /api/v1/quizzes
- GET /api/v1/quizzes

#### `POST /api/v1/multis`
##### Required Body Content:

```
{
  subject: 'Math',
  topic: 'division',
  grade: '4',
  questions: [
      {
        questionText: 'what is 8 / 4',
        correctAnswer: '2',
        options: [
          '4',
          '6',
          '2',
          '11'
        ]
      },
      {
        questionText: 'what is 6 / 2',
        correctAnswer: '3',
        options: [
          '12',
          '22',
          '2',
          '3'
        ]
      },
      {
        questionText: 'what is 20 / 4',
        correctAnswer: '5',
        options: [
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
#### `GET /api/v1/quizzes`
#### RESPONSE

```
STATUS: 200
{"quizzes": [
{
     id: '1',
   type: 'multis',
subject: 'Math',
  topic: 'division',
  grade: '4',
  title: 'Division II'
}, 
{...}
]
```

#### `GET /api/v1/multis/:id`
#### RESPONSE
:id param of multiple choice quiz the user selected
```
STATUS: 200
{"multi": [
{
       id: '1',
       type: 'multi',
  subject: 'Math';
  topic: 'division';
  grade: '4';
  questions: [
      {
        questionText: 'what is 8 / 4',
        correctAnswer: '2',
        options: [
          '4',
          '6',
          '2',
          '11'
        ]
      },
      {
        questionText: 'what is 6 / 2',
        correctAnswer: '3',
        options: [
          '12',
          '22',
          '2',
          '3'
        ]
      },
      {
        questionText: 'what is 20 / 4',
        correctAnswer: '5',
        options: [
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
