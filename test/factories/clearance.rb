Factory.sequence :email do |n|
  "user#{n}@example.com"
end

Factory.sequence :username do |n|
  "username#{n}"
end

# Modified from standard Clearance factory to pass username validation
Factory.define :user do |user|
  user.email                 { Factory.next :email }
  user.username              { Factory.next :username }
  user.password              { "password" }
  user.password_confirmation { "password" }
end

Factory.define :email_confirmed_user, :parent => :user do |user|
  user.email_confirmed { true }
end
