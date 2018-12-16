require 'iban-tools'

class IbanValidator < ActiveModel::Validator
  def validate(record)
    unless record.account.blank? or IBANTools::IBAN.valid? record.account
      record.errors[:account] << ' error : ce numéro est invalide.'
    end
  end
end
