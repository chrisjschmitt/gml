var vascoRoutes = "[{\"name\": \"\", \"verb\": \"\", \"controller\": \"account\", \"segs\": \"/account\", \"reqs\": \"{:controller=>\\\"account\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"login\", \"verb\": \"\", \"controller\": \"account\", \"segs\": \"/login\", \"reqs\": \"{:controller=>\\\"account\\\", :action=>\\\"login\\\"}\"}, {\"name\": \"logout\", \"verb\": \"\", \"controller\": \"account\", \"segs\": \"/logout\", \"reqs\": \"{:controller=>\\\"account\\\", :action=>\\\"logout\\\"}\"}, {\"name\": \"signup\", \"verb\": \"\", \"controller\": \"account\", \"segs\": \"/signup\", \"reqs\": \"{:controller=>\\\"account\\\", :action=>\\\"signup\\\"}\"}, {\"name\": \"admin_users\", \"verb\": \"\", \"controller\": \"admin_users\", \"segs\": \"/admin/users\", \"reqs\": \"{:controller=>\\\"admin_users\\\", :action=>\\\"list\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"admin_users\", \"segs\": \"/admin/user/:id\", \"reqs\": \"{:controller=>\\\"admin_users\\\", :action=>\\\"show\\\"}\"}, {\"name\": \"\", \"verb\": \"DELETE\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"destroy\\\"}\"}, {\"name\": \"\", \"verb\": \"PUT\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"update\\\"}\"}, {\"name\": \"formatted_exchange\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"show\\\"}\"}, {\"name\": \"exchange\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"show\\\"}\"}, {\"name\": \"\", \"verb\": \"PUT\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"update\\\"}\"}, {\"name\": \"formatted_edit_exchange\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id/edit.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"edit\\\"}\"}, {\"name\": \"edit_exchange\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id/edit\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"edit\\\"}\"}, {\"name\": \"\", \"verb\": \"DELETE\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/:id\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"destroy\\\"}\"}, {\"name\": \"exchanges\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"formatted_exchanges\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"formatted_new_exchange\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/new.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"new\\\"}\"}, {\"name\": \"\", \"verb\": \"POST\", \"controller\": \"exchanges\", \"segs\": \"/exchanges.:format\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"create\\\"}\"}, {\"name\": \"new_exchange\", \"verb\": \"GET\", \"controller\": \"exchanges\", \"segs\": \"/exchanges/new\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"new\\\"}\"}, {\"name\": \"\", \"verb\": \"POST\", \"controller\": \"exchanges\", \"segs\": \"/exchanges\", \"reqs\": \"{:controller=>\\\"exchanges\\\", :action=>\\\"create\\\"}\"}, {\"name\": \"sort\", \"verb\": \"\", \"controller\": \"gifts\", \"segs\": \"/gift/sort\", \"reqs\": \"{:controller=>\\\"gifts\\\", :action=>\\\"sort\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"gifts\", \"segs\": \"/gifts\", \"reqs\": \"{:controller=>\\\"gifts\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"destroy\", \"verb\": \"\", \"controller\": \"gifts\", \"segs\": \"/gift/destroy\", \"reqs\": \"{:controller=>\\\"gifts\\\", :action=>\\\"destroy\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"gifts\", \"segs\": \"/gift/show/:id\", \"reqs\": \"{:controller=>\\\"gifts\\\", :action=>\\\"show\\\"}\"}, {\"name\": \"create\", \"verb\": \"\", \"controller\": \"gifts\", \"segs\": \"/gift/create\", \"reqs\": \"{:controller=>\\\"gifts\\\", :action=>\\\"create\\\"}\"}, {\"name\": \"list\", \"verb\": \"\", \"controller\": \"gifts\", \"segs\": \"/list\", \"reqs\": \"{:controller=>\\\"gifts\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"home\", \"verb\": \"\", \"controller\": \"home\", \"segs\": \"/home\", \"reqs\": \"{:controller=>\\\"home\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/reply/to/message/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"reply\\\"}\"}, {\"name\": \"trash\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/trash\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"trash\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/undestroy/incoming/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"undestroy\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/destroy/incoming/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"destroy\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/create/message/to/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"create\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/incoming/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"incoming\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/outgoing/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"outgoing\\\"}\"}, {\"name\": \"outbox\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/outbox\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"outbox\\\"}\"}, {\"name\": \"inbox\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/inbox\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"inbox\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"messages\", \"segs\": \"/send/message/to/:id\", \"reqs\": \"{:controller=>\\\"messages\\\", :action=>\\\"new\\\"}\"}, {\"name\": \"people\", \"verb\": \"\", \"controller\": \"profile\", \"segs\": \"/people\", \"reqs\": \"{:controller=>\\\"profile\\\", :action=>\\\"list\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"profile\", \"segs\": \"/person/:username\", \"reqs\": \"{:controller=>\\\"profile\\\", :action=>\\\"user\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"settings\", \"segs\": \"/settings/update/password\", \"reqs\": \"{:controller=>\\\"settings\\\", :action=>\\\"update_password\\\"}\"}, {\"name\": \"preferences\", \"verb\": \"\", \"controller\": \"settings\", \"segs\": \"/settings/preferences\", \"reqs\": \"{:controller=>\\\"settings\\\", :action=>\\\"preferences\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"settings\", \"segs\": \"/settings/update/preferences\", \"reqs\": \"{:controller=>\\\"settings\\\", :action=>\\\"update_preferences\\\"}\"}, {\"name\": \"change_password\", \"verb\": \"\", \"controller\": \"settings\", \"segs\": \"/settings/change/password\", \"reqs\": \"{:controller=>\\\"settings\\\", :action=>\\\"change_password\\\"}\"}, {\"name\": \"\", \"verb\": \"\", \"controller\": \"site\", \"segs\": \"/boom\", \"reqs\": \"{:controller=>\\\"site\\\", :action=>\\\"boom\\\"}\"}, {\"name\": \"front\", \"verb\": \"\", \"controller\": \"site\", \"segs\": \"/\", \"reqs\": \"{:controller=>\\\"site\\\", :action=>\\\"front\\\"}\"}, {\"name\": \"\", \"verb\": \"DELETE\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"destroy\\\"}\"}, {\"name\": \"\", \"verb\": \"POST\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"create\\\"}\"}, {\"name\": \"\", \"verb\": \"POST\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"create\\\"}\"}, {\"name\": \"new_subscription\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/new\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"new\\\"}\"}, {\"name\": \"formatted_new_subscription\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/new.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"new\\\"}\"}, {\"name\": \"edit_subscription\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id/edit\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"edit\\\"}\"}, {\"name\": \"formatted_edit_subscription\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id/edit.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"edit\\\"}\"}, {\"name\": \"subscription\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"show\\\"}\"}, {\"name\": \"formatted_subscription\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"show\\\"}\"}, {\"name\": \"\", \"verb\": \"PUT\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"update\\\"}\"}, {\"name\": \"\", \"verb\": \"PUT\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"update\\\"}\"}, {\"name\": \"\", \"verb\": \"DELETE\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions/:id\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"destroy\\\"}\"}, {\"name\": \"formatted_subscriptions\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions.:format\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"index\\\"}\"}, {\"name\": \"subscriptions\", \"verb\": \"GET\", \"controller\": \"subscriptions\", \"segs\": \"/subscriptions\", \"reqs\": \"{:controller=>\\\"subscriptions\\\", :action=>\\\"index\\\"}\"}]".evalJSON();
var vascoControllers = "[\"account\", \"admin_users\", \"exchanges\", \"gifts\", \"home\", \"messages\", \"profile\", \"settings\", \"site\", \"subscriptions\"]".evalJSON();
var vascoModelsAndAttributes = "{\"messages\": {\"attributes\": {\"updated_at\": \"datetime\", \"body\": \"text\", \"sent_to\": \"integer\", \"replied_at\": \"datetime\", \"deleted_at\": \"datetime\", \"subject\": \"varchar(255)\", \"id\": \"INTEGER\", \"read_at\": \"datetime\", \"sent_by\": \"integer\", \"in_reply_to\": \"integer\", \"created_at\": \"datetime\"}, \"model_name\": \"Message\"}, \"subscriptions\": {\"attributes\": {\"updated_at\": \"datetime\", \"exchange_id\": \"integer\", \"id\": \"INTEGER\", \"date_joined\": \"date\", \"user_id\": \"integer\", \"created_at\": \"datetime\"}, \"model_name\": \"Subscription\"}, \"exchanges\": {\"attributes\": {\"name\": \"varchar(255)\", \"updated_at\": \"datetime\", \"id\": \"INTEGER\", \"description\": \"text\", \"created_at\": \"datetime\"}, \"model_name\": \"Exchange\"}, \"gifts\": {\"attributes\": {\"name\": \"varchar(255)\", \"updated_at\": \"datetime\", \"purchased\": \"boolean\", \"quantity\": \"integer\", \"purchase_date\": \"datetime\", \"id\": \"INTEGER\", \"user_id\": \"integer\", \"position\": \"integer\", \"purchaser_id\": \"integer\", \"created_at\": \"datetime\"}, \"model_name\": \"Gift\"}}".evalJSON();
var vascoIds = "{\"preference_stores\": [], \"messages\": [], \"subscriptions\": [], \"exchanges\": [], \"gifts\": [10, 25, 26, 27, 28, 29, 30, 31, 32], \"users\": [1, 2]}".evalJSON();
var vascoModelProperties = "{\"preference_stores\": [\"id\", \"created_at\", \"updated_at\", \"user_id\", \"notify_new_message\"], \"messages\": [\"id\", \"created_at\", \"updated_at\", \"deleted_at\", \"sent_by\", \"sent_to\", \"replied_at\", \"in_reply_to\", \"subject\", \"body\", \"read_at\"], \"subscriptions\": [\"id\", \"user_id\", \"exchange_id\", \"date_joined\", \"created_at\", \"updated_at\"], \"exchanges\": [\"id\", \"name\", \"description\", \"created_at\", \"updated_at\"], \"gifts\": [\"id\", \"name\", \"quantity\", \"purchased\", \"user_id\", \"purchaser_id\", \"purchase_date\", \"position\", \"created_at\", \"updated_at\"], \"users\": [\"id\", \"created_at\", \"updated_at\", \"type\", \"username\", \"email\", \"crypted_password\", \"salt\"]}".evalJSON();
var vascoModelNames = "{\"preference_stores\": \"preference_store\", \"messages\": \"message\", \"subscriptions\": \"subscription\", \"exchanges\": \"exchange\", \"gifts\": \"gift\", \"users\": \"user\"}".evalJSON();