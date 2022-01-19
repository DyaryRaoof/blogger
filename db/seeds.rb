

wendy = User.create!(
    name: 'Wendy',
    photo: 'https://dummyimage.com/600x400/000/fff' ,
    bio: 'Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Pellentesque nulla nunc, 
    lacinia sed volutpat ut, tristique et tortor. 
    Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
    Aenean varius sem vel tellus elementum,
    in eleifend mauris eleifend. Donec at tempor libero,
    et maximus magna. Nulla vehicula convallis nulla.
    Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
    posts_counter: 0)
   john = User.create!(
    name: 'John',
    photo: 'https://dummyimage.com/600x400/000/fff',
    bio: 'Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Pellentesque nulla nunc, 
    lacinia sed volutpat ut, tristique et tortor. 
    Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
    Aenean varius sem vel tellus elementum,
    in eleifend mauris eleifend. Donec at tempor libero,
    et maximus magna. Nulla vehicula convallis nulla.
    Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
    posts_counter: 0)

    ahmad = john = User.create!(
        name: 'Ahmad',
        photo: 'https://dummyimage.com/600x400/000/fff',
        bio: 'Lorem ipsum dolor sit amet,
        consectetur adipiscing elit. Pellentesque nulla nunc, 
        lacinia sed volutpat ut, tristique et tortor. 
        Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
        Aenean varius sem vel tellus elementum,
        in eleifend mauris eleifend. Donec at tempor libero,
        et maximus magna. Nulla vehicula convallis nulla.
        Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
        posts_counter: 0)
   
   post1 = wendy.posts.create!(title: 'Cats and Dogs 1', text: 'this is first post about cats and dogs! 1', comments_counter: 0, likes_counter: 0)
   post2 = wendy.posts.create!(title: 'Cats and Dogs 2', text: 'this is first post about cats and dogs! 2', comments_counter: 0, likes_counter: 0)
   post3 = wendy.posts.create!(title: 'Cats and Dogs 3', text: 'this is first post about cats and dogs! 3', comments_counter: 0, likes_counter: 0)
   post4 = wendy.posts.create!(title: 'Cats and Dogs 4', text: 'this is first post about cats and dogs! 4', comments_counter: 0, likes_counter: 0)
   post5 = wendy.posts.create!(title: 'Cats and Dogs 5', text: 'this is first post about cats and dogs! 5', comments_counter: 0, likes_counter: 0)
   post6 = john.posts.create!(title: 'Never ending fun', text: 'this is second post but I don\'t think I should create another post again', comments_counter: 0, likes_counter: 0)
   post7 = john.posts.create!(title: 'The end of the world', text: 'it all around the corner', comments_counter: 0, likes_counter: 0)
   
   wendy.comments.create!(text: 'really nice post Michael', post: post1)
   wendy.comments.create!(text: 'Absolutely amazing 1', post: post1)
   wendy.comments.create!(text: 'Absolutely amazing 2', post: post1)
   wendy.comments.create!(text: 'Absolutely amazing 3', post: post1)
   wendy.comments.create!(text: 'Absolutely amazing 4', post: post1)
   wendy.comments.create!(text: 'Absolutely amazing 5', post: post1)
   john.comments.create!(text: 'Well Done 👏👏👏', post: post1)
   john.comments.create!(text: 'Love 💓 it!!!', post: post1)
   john.comments.create!(text: 'I am with you to the bone man!', post: post1)

   