require 'rails_helper'

RSpec.describe Buffet, type: :model do
  describe "#valid?" do
    it "true when all valid" do
      manager = Manager.create!(
        name: "Marcos Áries",
        email: "marcos_aries@manager.com",
        password: "m4n4g3r",
      )
      buffet = Buffet.new(
        name: "Marte",
        description: "Marte é o planeta regente de Áries",
        company_name: "Arianos de Marte",
        license_number: "111",
        email: "aries_marte@buffet.com",
        phone_number: "222",
        manager: manager
      )

      result = buffet.valid?
      expect(result).to eq true
    end

    context "presence" do
      it "false when missing value of name" do
        buffet = Buffet.new(name: '')

        buffet.valid?
        errors = buffet.errors

        expect(errors.include? :name).to eq true
        expect(errors[:name]).to include 'não pode ficar em branco'
      end
      it "false when missing value of company_name" do
        buffet = Buffet.new(company_name: '')

        buffet.valid?
        errors = buffet.errors

        expect(errors.include? :company_name).to eq true
        expect(errors[:company_name]).to include 'não pode ficar em branco'
      end
      it "false when missing value of license_number" do
        buffet = Buffet.new(license_number: '')

        buffet.valid?
        errors = buffet.errors

        expect(errors.include? :license_number).to eq true
        expect(errors[:license_number]).to include 'não pode ficar em branco'
      end
      it "false when missing value of phone_number" do
        buffet = Buffet.new(phone_number: '')

        buffet.valid?
        errors = buffet.errors

        expect(errors.include? :phone_number).to eq true
        expect(errors[:phone_number]).to include 'não pode ficar em branco'
      end
      it "false when missing value of email" do
        buffet = Buffet.new(email: '')

        buffet.valid?
        errors = buffet.errors

        expect(errors.include? :email).to eq true
        expect(errors[:email]).to include 'não pode ficar em branco'
      end
      it "true when missing value of description" do
        buffet = Buffet.new(description: '')

        buffet.valid?
        errors = buffet.errors

        expect(errors.include? :description).to eq false
      end
    end
  end
end
