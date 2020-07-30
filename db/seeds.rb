# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Let's care about something
cause = Cause.create(
    title: "BLM",
    description: "#BlackLivesMatter was founded in 2013 in response to the acquittal of Trayvon Martin's murderer.
    Black Lives Matter Foundation, Inc is a global organization in the US, UK, and Canada, whose mission is to
    eradicate white supremacy and build local power to intervene in violence inflicted on Black communities by
    the state and vigilantes. By combating and countering acts of violence, creating space for Black imagination and
    innovation, and centering Black joy, we are winning immediate improvements in our lives."
)

# Let's create some users (Devise makes this process a little wonky)
user_one = User.create(first_name: "Jon",
                       last_name: "Ke",
                       email: "jon@wait.holdon.oh.ok.wait",
                       password: "password123",
                       password_confirmation: "password123",
                       status: "active")
user_two = User.create(first_name: "David",
                       last_name: "Wood",
                       email: "david@alwaysanxious.lol",
                       password: "password123",
                       password_confirmation: "password123",
                       status: "active")
user_three = User.create(first_name: "Michael",
                         last_name: "Kozakov",
                         email: "michael@buble.itspronouncedbublé",
                         password: "password123",
                         password_confirmation: "password123",
                         status: "active")
incomplete_user = User.create(first_name: "Jacob",
                              last_name: "Tsafatinos",
                              email: "jacob@idisagree.hmm",
                              password: "password123",
                              password_confirmation: "password123",
                              status: "incomplete")
deactivated_user = User.create(first_name: "Nick",
                               last_name: "Frosst",
                               email: "nick@italktoscientistsallday.ok",
                               password: "password123",
                               password_confirmation: "password123",
                               status: "deactivated")

# Those users have active subscriptions
subscription_one = Subscription.create(amount: 1000, user: user_one)
subscription_two = Subscription.create(amount: 2000, user: user_two)
subscription_three = Subscription.create(amount: 2000, user: user_three)

# Let's create some great organizations for those causes
organization_one = Organization.create(
  title: "BLM Canada",
  description: "Black Lives Matter – Canada is the Canadian chapter of #blacklivesmatter, an international
  organization and movement fighting police and state violence and anti-Black racism.",
  cause: cause
)
organization_two = Organization.create(
  title: "Nia Centre for the Arts",
  description: "Nia Centre is committed to supporting artists working across disciplines,
  and ranging in experience levels. We strive to build the creative capacities and support
  the development of a healthy identity in Black youth. We are committed to connecting community
  members to artistic and cultural experiences, year-round.",
  cause: cause
)

# Let's subscribe to those organizations
SubscriptionOrganization.create(
  [
    { organization: organization_one, subscription: subscription_one },
    { organization: organization_two, subscription: subscription_two },

    { organization: organization_one, subscription: subscription_three }, # Subscription 3 is subscribed
    { organization: organization_two, subscription: subscription_three }  # to many organizations
  ]
)
