
# if User.all.count > 0
#   User.destroy_all
# end
#
# if Learner.all.count > 0
#   Learner.destroy_all
# end
#
# if Log.all.count > 0
#   Log.destroy_all
# end

users_list = [
  {
    name: "Erin Sings",
    email: "erin@egg.com",
    password_digest: "$2a$10$afvFAUceSN.DG0JZWpDJUOW7jntjO0WELqPOwF4Xf.8RKbJD8C6ty",
    case_manager: true,
    speech_therapist: false,
    occupational_therapist: false,
    parent_guardian: false,
    image: ""
  },
  {
    name: "James de la Cruz",
    email: "james@egg.com",
    password_digest: "$2a$10$POZpl5wlGl.VA/Y/wrsjxudrExCalcMgB5S07JqHGHtqh0yJmdm4K",
    case_manager: true,
    speech_therapist: false,
    occupational_therapist: true,
    parent_guardian: false,
    image: ""
  }
]

learners_list = [
  {
    name: "John",
    image: "",
    age: 5,
    parent_guardian: "Tanya",
    contact_info: "(415)599-50-90",
    inventory_of_favorites: "Blankie, Pet named Brownie, Ipad Play",
    user_id: 1
  },
  {
    name: "Tom",
    image: "",
    age: 8,
    parent_guardian: "Josephine",
    contact_info: "(415)599-50-90",
    inventory_of_favorites: "Sherwin my Doll, Ipad Play, Purple Fidget Toy",
    user_id: 1
  },
  {
    name: "Tim",
    image: "",
    age: 4,
    parent_guardian: "Josephine",
    contact_info: "(415)599-50-90",
    inventory_of_favorites: "Sherwin my Doll, Ipad Play, Purple Fidget Toy",
    user_id: 1
  },
  {
    name: "Dale",
    image: "",
    age: 6,
    parent_guardian: "Josephine",
    contact_info: "(415)599-50-90",
    inventory_of_favorites: "Sherwin my Doll, Ipad Play, Purple Fidget Toy",
    user_id: 1
  },
  {
    name: "Adam",
    image: "",
    age: 4,
    parent_guardian: "Josephine",
    contact_info: "(415)599-50-90",
    inventory_of_favorites: "Sherwin my Doll, Ipad Play, Purple Fidget Toy",
    user_id: 1
  }
]

logs_list = [
  {
    title: "Lesson: Ready",
    starting_mood: "Happy",
    level: 1,
    verbal_word_approximation: false,
    physically_identify: true,
    good_choices: "Play with Ipad, Give a Hug",
    action: "Get Ipad from table and play, Stand up and hug teacher",
    observations: "John was very happy today, he quickly identified the emotions and was eager to act on good choices",
    comments: "Must practice with EGG game at home with parents",
    learner_id: 1
  },
  {
    title: "Lesson: Ready, Set",
    starting_mood: "Sad",
    level: 2,
    verbal_word_approximation: false,
    physically_identify: false,
    good_choices: "Give a Hug, Take a Nap",
    action: "Go take nap",
    observations: "Tom was pretty sad today, he intially did not want to do the lesson",
    comments: "Tom may need more sleep and play time",
    learner_id: 2
  },
  {
    title: "Lesson: Ready, Set, Go!",
    starting_mood: "Happy",
    level: 3,
    verbal_word_approximation: false,
    physically_identify: true,
    good_choices: "Give a Hug, Take a Nap",
    action: "Go take nap",
    observations: "Tom was pretty sad today, he intially did not want to do the lesson",
    comments: "Tom may need more sleep and play time",
    learner_id: 2
  }
]


User.create(users_list)
Learner.create(learners_list)
Log.create(logs_list)
