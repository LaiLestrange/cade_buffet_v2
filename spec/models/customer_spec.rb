require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "#valid?" do
    it "true when all valid" do
      customer = Customer.new(
        name: "Carlos Áries",
        social_security_number: "69727146058",
        email: "carlos_aries@cliente.com",
        password: "cl13n73",
      )

      result = customer.valid?
      expect(result).to eq true
    end

    context "presence" do
      it "false when missing value of name" do
        customer = Customer.new(name: '')

        customer.valid?
        errors = customer.errors

        expect(errors.include? :name).to eq true
        expect(errors[:name]).to include 'não pode ficar em branco'
      end
      it "false when missing value of social_security_number" do
        customer = Customer.new(social_security_number: '')

        customer.valid?
        errors = customer.errors

        expect(errors.include? :social_security_number).to eq true
        expect(errors[:social_security_number]).to include 'não pode ficar em branco'

      end
    end

    context "uniqueness" do
      it 'false when social_security_number already in use' do
        Customer.create!(
          name: "Carlos Áries",
          social_security_number: "69727146058",
          email: "carlos_aries@cliente.com",
          password: "cl13n73",
        )

        customer = Customer.new(social_security_number: "69727146058")

        customer.valid?
        errors = customer.errors

        expect(errors.include? :social_security_number).to eq true
        expect(errors[:social_security_number]).to include 'já está em uso'

      end
    end

    context "validation of social_security_number" do
      it 'false when social_security_number is not valid' do
        customer = Customer.new(social_security_number: '12345678900')

        customer.valid?
        errors = customer.errors

        expect(errors.include? :social_security_number).to eq true
        expect(errors[:social_security_number]).to include 'inválido'
      end
    end

  end
end
