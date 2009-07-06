class ClearanceMailer < ActionMailer::Base

  def invite_member(user)
    from       DO_NOT_REPLY
    recipients user.email
    subject    I18n.t(:invite_member,
                      :scope   => [:clearance, :models, :clearance_mailer],
                      :default => "Invite someone to join a gift exchange")
    body       :user => user
  end

end
