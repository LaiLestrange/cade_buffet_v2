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
    it 'from another route' do
      visit login_path
      within 'header' do
        click_on 'Cadê Buffet?'
      end
      expect(current_path).to eq root_path
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

      expect(page).not_to have_button 'Sair'
    end
  end

  context "and creates an account" do
    context "as CUSTOMER" do
      it 'from root page' do
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

      it 'successfully' do
        visit new_customer_registration_path
        within '.FORM-SIGNUP' do
          fill_in 'Nome', with: 'Carlos Áries'
          fill_in 'CPF', with: '69727146058'
          fill_in 'E-mail', with: 'carlos_aries@cliente.com'
          fill_in 'Senha', with: 'cl13n73'
          fill_in 'Confirme sua senha', with: 'cl13n73'
          click_on 'Criar conta'
        end

        within 'header' do
          expect(page).not_to have_link 'Entrar'
          expect(page).to have_content 'Olá, Carlos Áries'
          expect(page).to have_button 'Sair'
        end

        expect(page).to have_content 'Boas vindas! Você realizou seu registro com sucesso.'

      end

      it 'leaving missing information' do

        visit new_customer_registration_path

        within '.FORM-SIGNUP' do
          fill_in 'Nome', with: 'Carlos Áries'
          fill_in 'CPF', with: '12345678900'
          fill_in 'E-mail', with: ''
          fill_in 'Senha', with: 'cl13n73'
          fill_in 'Confirme sua senha', with: 'cl13n73'
          click_on 'Criar conta'
        end

        within '.FORM-SIGNUP' do
          expect(page).to have_field 'Nome', with: 'Carlos Áries'
          expect(page).to have_field 'CPF', with: '12345678900'
        end

        expect(page).not_to have_content 'Boas vindas! Você realizou seu registro com sucesso.'
        expect(page).to have_content 'Não foi possível salvar cliente'
        expect(page).to have_content 'E-mail não pode ficar em branco'
        expect(page).to have_content 'CPF inválido'


      end

      it 'and logs out' do
        customer = Customer.create!(
          name: "Carlos Áries",
          social_security_number: "69727146058",
          email: "carlos_aries@cliente.com",
          password: "cl13n73",
        )

        login_as customer, scope: :customer
        visit root_path

        within 'header' do
          click_on 'Sair'
        end

        expect(current_path).to eq root_path
        expect(page).to have_content 'Logout efetuado com sucesso'
        within 'header' do
          expect(page).to have_link 'Entrar'
        end

      end
    end
  end
end
