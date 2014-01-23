require 'test_helper'

class WowUpgradesControllerTest < ActionController::TestCase
  setup do
    @wow_upgrade = wow_upgrades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wow_upgrades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wow_upgrade" do
    assert_difference('WowUpgrade.count') do
      post :create, wow_upgrade: { building_id: @wow_upgrade.building_id, type: @wow_upgrade.type }
    end

    assert_redirected_to wow_upgrade_path(assigns(:wow_upgrade))
  end

  test "should show wow_upgrade" do
    get :show, id: @wow_upgrade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wow_upgrade
    assert_response :success
  end

  test "should update wow_upgrade" do
    patch :update, id: @wow_upgrade, wow_upgrade: { building_id: @wow_upgrade.building_id, type: @wow_upgrade.type }
    assert_redirected_to wow_upgrade_path(assigns(:wow_upgrade))
  end

  test "should destroy wow_upgrade" do
    assert_difference('WowUpgrade.count', -1) do
      delete :destroy, id: @wow_upgrade
    end

    assert_redirected_to wow_upgrades_path
  end
end
