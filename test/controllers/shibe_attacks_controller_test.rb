require 'test_helper'

class ShibeAttacksControllerTest < ActionController::TestCase
  setup do
    @shibe_attack = shibe_attacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shibe_attacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shibe_attack" do
    assert_difference('ShibeAttack.count') do
      post :create, shibe_attack: { damage_dealt: @shibe_attack.damage_dealt, units_destroyed: @shibe_attack.units_destroyed, units_used: @shibe_attack.units_used, user_attacked_id: @shibe_attack.user_attacked_id, user_attacker_id: @shibe_attack.user_attacker_id }
    end

    assert_redirected_to shibe_attack_path(assigns(:shibe_attack))
  end

  test "should show shibe_attack" do
    get :show, id: @shibe_attack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shibe_attack
    assert_response :success
  end

  test "should update shibe_attack" do
    patch :update, id: @shibe_attack, shibe_attack: { damage_dealt: @shibe_attack.damage_dealt, units_destroyed: @shibe_attack.units_destroyed, units_used: @shibe_attack.units_used, user_attacked_id: @shibe_attack.user_attacked_id, user_attacker_id: @shibe_attack.user_attacker_id }
    assert_redirected_to shibe_attack_path(assigns(:shibe_attack))
  end

  test "should destroy shibe_attack" do
    assert_difference('ShibeAttack.count', -1) do
      delete :destroy, id: @shibe_attack
    end

    assert_redirected_to shibe_attacks_path
  end
end
