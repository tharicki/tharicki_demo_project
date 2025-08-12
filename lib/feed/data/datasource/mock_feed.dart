var mockFeed = {
  "feed": [
    {
      "id": 1,
      "description": "Hello! This is my first post here. Im in love with this new social media!",
      "dateTime": "2022-05-05T14:21:00",
      "isQuote": false,
      "isRepost": false,
      "author": {"id": 1, "name": "Tharicki", "lastName": "Pereira", "joinDate": "2022-01-05T14:21:00", "postsCount": 7, "quotedCount": 3, "repostsCount": 9}
    },
    {
      "id": 2,
      "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "dateTime": "2022-05-10T13:04:00",
      "isQuote": false,
      "isRepost": false,
      "author": {"id": 2, "name": "Emiliane", "lastName": "Espindola", "joinDate": "2022-01-05T14:21:00", "postsCount": 1, "quotedCount": 3}
    },
    {
      "id": 3,
      "description":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      "dateTime": "2022-06-04T18:30:00",
      "isQuote": false,
      "isRepost": true,
      "repostAuthor": {"id": 2, "name": "Emiliane", "lastName": "Espindola", "joinDate": "2022-01-05T14:21:00", "postsCount": 1, "quotedCount": 3},
      "author": {"id": 3, "name": "Alex", "lastName": "Silva", "joinDate": "2022-01-05T14:21:00", "postsCount": 3, "quotedCount": 1}
    },
    {
      "id": 4,
      "description": "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      "dateTime": "2022-06-05T19:16:00",
      "isQuote": true,
      "isRepost": false,
      "repostAuthor": {
        "id": 1,
        "name": "Tharicki",
        "lastName": "Pereira",
        "joinDate": "2022-01-05T14:21:00",
        "postsCount": 7,
        "quotedCount": 3,
        "repostsCount": 9
      },
      "author": {"id": 4, "name": "John", "lastName": "Anderson", "joinDate": "2022-01-05T14:21:00", "postsCount": 1, "quotedCount": 1}
    }
  ]
};
