
users = [
    {
        email: 'pro_athelete@example.com',
        password:'123456',
        password_confirmation:'123456',
        first_name: 'John',
        last_name: 'Do',
        gender: 'male',
        birth_date: '1-1-1990',
        height: '191',
        start_weight: '89',
        home_location: 'Chicago',
        image: 'https://www.news-medical.net/image.axd?picture=2020%2F1%2Fshutterstock_603198743.jpg'
    },
    {
        email: 'amater_athelete@example.com',
        password:'123456',
        password_confirmation:'123456',
        first_name: 'Mike',
        last_name: 'Zuber',
        gender: 'male',
        birth_date: '1-1-1987',
        height: '185',
        start_weight: '89',
        home_location: 'Chcicago',
        image: 'https://media.istockphoto.com/photos/running-is-one-of-the-best-ways-to-stay-fit-picture-id1036780592?k=20&m=1036780592&s=612x612&w=0&h=vdzffxVOSgGgdEM3yWuE4av-LQn8G_fpWVPtycZo2K8='
    },
]

weights = [
    {
        user_id: 1,
        weight_value: 90,
        time:'12-1-2021 12:00:00'
    },
    {
        user_id: 1,
        weight_value: 89,
        time:'12-2-2021 12:00:00'
    },
    {
        user_id: 1,
        weight_value: 88,
        time:'12-3-2021 12:00:00'
    },
    {
        user_id: 2,
        weight_value: 87,
        time:'12-1-2021 12:00:00'
    },
    {
        user_id: 2,
        weight_value: 86,
        time:'12-2-2021 12:00:00'
    },
    {
        user_id: 2,
        weight_value: 85,
        time:'12-3-2021 12:00:00'
    }
]

weight_goal = [
    {
        user_id: 1,
        goal: 88
    },
    {
        user_id: 2,
        goal: 88.5
    }
]

trening_sessions = [
    {
        user_id: 1,
        start_time: '12-1-2021 12:00:00',
        duration: "1",
        activity_type: 'running',
        distance: '9.5',
        note: "all good",
        feeling: "strong"
    },
    {
        user_id: 1,
        start_time: '12-2-2021 12:00:00', 
        duration: '1',
        activity_type: 'hiking',
        distance: '5',
        note: 'all good',
        feeling: 'normal'
    },
    {
        user_id: 2,
        start_time: '12-1-2021 12:00:00',
        duration: '1',
        activity_type: 'running',
        distance: '10.5',
        note: 'nice tempo',
        feeling: 'very strong'
    },
    {
        user_id: 2,
        start_time: '12-2-2021 12:00:00',
        duration: '1',
        activity_type: 'hiking',
        distance: '5.5',
        note: 'nice weather',
        feeling: 'strong'
    }
]

users.map do |user|
    User.find_or_create_by(email: user[:email]) do |u|
        u.email = user[:email]
        u.password = user[:password]
        u.password_confirmation = user[:password_confirmation]
        u.first_name = user[:first_name]
        u.last_name = user[:last_name]
        u.gender = user[:gender]
        u.birth_date = user[:birth_date]
        u.height = user[:height]
        u.start_weight = user[:start_weight]
        u.home_location = user[:home_location]
        u.image = user[:image]
        # puts (u.errors.full_messages)
        puts "successfully created user #{user[:first_name]}"
    end
end

# trening_sessions.map do |trening|
#     TreningSession.find_or_create_by(user_id: trening[:user_id], date: trening[:date], start_time: trening[:start_time]) do |t|
#         t.user_id = trening[:user_id]
#         t.date = trening[:date]
#         t.start_time = trening[:start_time]
#         t.duration = trening[:duration]
#         t.activity_type = trening[:activity_type]
#         t.distance = trening[:distance]
#         t.note = trening[:note]
#         t.feeling = trening[:feeling]
#     end
# end



# weight_goal.map do |goal|
#     WeightGoal.find_or_create_by(user_id: goal[:user_id]) do |g|
#         g.user_id = goal[:user_id]
#         g.goal = goal[:goal]
#     end
# end

# weights.map do |weight|
#     Weight.find_or_create_by(user_id: weight[:user_id], time: weight[:time]) do |w|
#         w.user_id = weight[:user_id]
#         w.weight_value = weight[:weight_value]
#         w.time = weight[:time]
#     end
# end

