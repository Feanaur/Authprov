user = User.create( provider: "vkontakte",
                    uid: "18113494",
                    name: "Александр Колмаков",
                    email: 'id18113494@vk.com',
                    image: "http://cs864.vk.me/u18113494/e_ef6105de.jpg",
                    password: Devise.friendly_token[0,20],
                    roles: [:admin])
user.save