class Iban < ApplicationRecord
  belongs_to :user
  validates_with IbanValidator

  before_save :iban_account

  def iban_account
    self.account = IBANTools::IBAN.new(self.account).prettify
  end

end
