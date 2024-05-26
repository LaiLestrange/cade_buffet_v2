require 'rails_helper'

RSpec.describe Manager, type: :model do
  describe "#valid?" do
    it "true when all valid" do
      manager = Manager.new(
        name: "Marcos Áries",
        email: "marcos_aries@manager.com",
        password: "m4n4g3r",
      )

      result = manager.valid?
      expect(result).to eq true
    end

    context "presence" do
      it "false when missing value of name" do
        manager = Manager.new(name: '')

        manager.valid?
        errors = manager.errors

        expect(errors.include? :name).to eq true
        expect(errors[:name]).to include 'não pode ficar em branco'
      end
    end
  end
end
