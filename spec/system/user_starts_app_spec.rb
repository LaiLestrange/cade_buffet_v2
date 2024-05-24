require 'rails_helper'

describe 'User starts app' do
  context "and goes to root path" do
    it 'and sees start up page' do
      visit root_path
      expect(current_path).to eq root_path
      expect(page).to have_content 'Cadê Buffet?'
      within('header') do
        expect(page).to have_link 'Entrar'
      end
    end

    it 'and tries to login' do
      visit root_path
      within('header') do
        click_on 'Entrar'
      end

      expect(current_path).to eq login_path
      expect(page).to have_content 'Entrar'
      expect(page).to have_link 'Entrar como Cliente'
      expect(page).to have_link 'Entrar como Administrador'
    end
  end

  context "and creates an account" do
    context "as CUSTOMER" do
      it 'they go to create account' do
        visit root_path
        within 'header' do
          click_on 'Entrar'
        end
        within '#login-buttons' do
          click_on 'Entrar como Cliente'
        end
        within '.FORM-LOGIN' do
          click_on 'Criar uma conta'
        end

        expect(current_path).to eq new_customer_registration_path
        expect(page).to have_content 'Novo cliente'
        within '.FORM-SIGNUP' do
          expect(page).to have_field 'Nome'
          expect(page).to have_field 'CPF'
          expect(page).to have_field 'E-mail'
          expect(page).to have_field 'Senha'
          expect(page).to have_content 'Mínimo de 6 caracteres'
          expect(page).to have_field 'Confirme sua senha'
          expect(page).to have_button 'Criar conta'
        end
      end
    end
  end
end
