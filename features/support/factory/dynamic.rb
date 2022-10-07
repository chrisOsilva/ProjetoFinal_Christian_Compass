require 'faker'

module Factory
    class Dynamic
        def self.registrar_new_user
            {
                nome: Faker::Internet.username,
                email: Faker::Internet.email,
                senha: Faker::Internet.password(min_length: 6)
            }
        end
    end
end