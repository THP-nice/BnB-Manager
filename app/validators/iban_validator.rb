require 'iban-tools'

class IbanValidator < ActiveModel::Validator
  def validate(record)
    iban = IBANTools::IBAN.new(record) # Create a new Iban
    unless IBANTools::IBAN.valid?(record.iban) # Check if the iban is valid or not
      record.errors.add :iban, record.errors.generate_message(:iban, :invalid)
    end
  end
end
