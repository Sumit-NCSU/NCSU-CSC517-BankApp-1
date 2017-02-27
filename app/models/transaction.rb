class Transaction < ApplicationRecord

  belongs_to :from_account, :foreign_key => 'from_account', :class_name => 'Account', optional:true
  belongs_to :to_account, :foreign_key => 'to_account', :class_name => 'Account',  optional:true

  TYPES = %w(deposit withdrawal send borrow)
  STATUS_OPTIONS = %w(pending approved)
  validates :txn_type, :inclusion => {:in => TYPES}
  validates :status, :inclusion => {:in => STATUS_OPTIONS}

  def self.all_pending
    self.where(:status => 'pending')
  end
end
