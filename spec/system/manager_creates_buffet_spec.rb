require 'rails_helper'

describe 'Manager creates Buffet' do
  context 'immediately after creates account' do
    it 'from root page' do
      manager = Manager.create!(
        name: "Marcos Áries",
        email: "marcos_aries@manager.com",
        password: "m4n4g3r",
      )

      login_as manager, scope: :manager
      visit root_path

      expect(current_path).to eq new_buffet_path
      expect(page).to have_content 'Cadastrar Buffet'
      within '.FORM-NEW-BUFFET' do
        expect(page).to have_field 'Nome fantasia'
        expect(page).to have_field 'Descrição'
        expect(page).to have_field 'Razão social'
        expect(page).to have_field 'CNPJ'
        expect(page).to have_field 'E-mail'
        expect(page).to have_field 'Telefone'
        expect(page).to have_button 'Salvar'
      end
    end

    it 'successfully' do
      manager = Manager.create!(
        name: "Marcos Áries",
        email: "marcos_aries@manager.com",
        password: "m4n4g3r",
      )

      login_as manager, scope: :manager
      visit root_path

      within '.FORM-NEW-BUFFET' do
        fill_in 'Nome fantasia', with: 'Marte'
        fill_in 'Descrição', with: 'Marte é o planeta regente de Áries'
        fill_in 'Razão social', with: 'Arianos de Marte'
        fill_in 'CNPJ', with: '111'
        fill_in 'E-mail', with: 'aries_marte@buffet.com'
        fill_in 'Telefone', with: '(11) 11111-1111'
        click_on 'Salvar'
      end

      buffet = Buffet.last
      expect(current_path).to eq buffet_path(buffet.id)
      expect(page).to have_content 'Buffet cadastrado com sucesso'

      expect(page).to have_content "Buffet Marte"
      expect(page).to have_content "Marte é o planeta regente de Áries"
      expect(page).to have_content "Arianos de Marte"
      expect(page).to have_content "111"
      expect(page).to have_content "aries_marte@buffet.com"
      expect(page).to have_content "(11) 11111-1111"
    end

    it 'lefting out information' do
      manager = Manager.create!(
        name: "Marcos Áries",
        email: "marcos_aries@manager.com",
        password: "m4n4g3r",
      )

      login_as manager, scope: :manager
      visit root_path

      within '.FORM-NEW-BUFFET' do
        fill_in 'Nome fantasia', with: ''
        fill_in 'Descrição', with: ''
        fill_in 'Razão social', with: 'Arianos de Marte'
        fill_in 'CNPJ', with: '111'
        fill_in 'E-mail', with: 'aries_marte@buffet.com'
        fill_in 'Telefone', with: '(11) 11111-1111'
        click_on 'Salvar'
      end

      expect(page).not_to have_content 'Buffet cadastrado com sucesso'
      expect(page).to have_content 'Não foi possível savar buffet'
      expect(page).to have_content "Nome fantasia não pode ficar em branco"
    end

    # lefting out information

  end
  # tries to navigate before doing it
  # tries to create a second buffet
end
