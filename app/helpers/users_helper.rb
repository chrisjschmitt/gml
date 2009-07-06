module UsersHelper

def create_or_update_invites_url
  return @exchange.new_record? ? invites_url : invite_url
end

end

