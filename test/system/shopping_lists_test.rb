require 'application_system_test_case'

class ShoppingListsTest < ApplicationSystemTestCase
  setup do
    @shopping_list = shopping_lists(:one)
  end

  test 'visiting the index' do
    visit shopping_lists_url
    assert_selector 'h1', text: 'Shopping lists'
  end

  test 'should create shopping list' do
    visit shopping_lists_url
    click_on 'New shopping list'

    fill_in 'Food', with: @shopping_list.food
    fill_in 'Price', with: @shopping_list.price
    fill_in 'Quantity', with: @shopping_list.quantity
    fill_in 'User', with: @shopping_list.user_id
    click_on 'Create Shopping list'

    assert_text 'Shopping list was successfully created'
    click_on 'Back'
  end

  test 'should update Shopping list' do
    visit shopping_list_url(@shopping_list)
    click_on 'Edit this shopping list', match: :first

    fill_in 'Food', with: @shopping_list.food
    fill_in 'Price', with: @shopping_list.price
    fill_in 'Quantity', with: @shopping_list.quantity
    fill_in 'User', with: @shopping_list.user_id
    click_on 'Update Shopping list'

    assert_text 'Shopping list was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Shopping list' do
    visit shopping_list_url(@shopping_list)
    click_on 'Destroy this shopping list', match: :first

    assert_text 'Shopping list was successfully destroyed'
  end
end
