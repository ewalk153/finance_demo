require 'test_helper'

class PaymentJournalsControllerTest < ActionController::TestCase
  setup do
    @payment_journal = payment_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_journals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_journal" do
    assert_difference('PaymentJournal.count') do
      post :create, payment_journal: { amount: @payment_journal.amount, description: @payment_journal.description }
    end

    assert_redirected_to payment_journal_path(assigns(:payment_journal))
  end

  test "should show payment_journal" do
    get :show, id: @payment_journal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_journal
    assert_response :success
  end

  test "should update payment_journal" do
    patch :update, id: @payment_journal, payment_journal: { amount: @payment_journal.amount, description: @payment_journal.description }
    assert_redirected_to payment_journal_path(assigns(:payment_journal))
  end

  test "should destroy payment_journal" do
    assert_difference('PaymentJournal.count', -1) do
      delete :destroy, id: @payment_journal
    end

    assert_redirected_to payment_journals_path
  end
end
