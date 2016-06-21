class PaymentJournalsController < ApplicationController
  before_action :set_payment_journal, only: [:show, :edit, :update, :destroy]

  protect_from_forgery :except => [:create]

  # GET /payment_journals
  # GET /payment_journals.json
  def index
    @payment_journals = PaymentJournal.all
  end

  # GET /payment_journals/1
  # GET /payment_journals/1.json
  def show
  end

  # GET /payment_journals/new
  def new
    @payment_journal = PaymentJournal.new
  end

  # GET /payment_journals/1/edit
  def edit
  end

  # POST /payment_journals
  # POST /payment_journals.json
  def create
    @payment_journal = PaymentJournal.new(payment_journal_params)

    respond_to do |format|
      if @payment_journal.save
        format.html { redirect_to @payment_journal, notice: 'Payment journal was successfully created.' }
        format.json { render :show, status: :created, location: @payment_journal }
      else
        format.html { render :new }
        format.json { render json: @payment_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_journals/1
  # PATCH/PUT /payment_journals/1.json
  def update
    respond_to do |format|
      if @payment_journal.update(payment_journal_params)
        format.html { redirect_to @payment_journal, notice: 'Payment journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_journal }
      else
        format.html { render :edit }
        format.json { render json: @payment_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_journals/1
  # DELETE /payment_journals/1.json
  def destroy
    @payment_journal.destroy
    respond_to do |format|
      format.html { redirect_to payment_journals_url, notice: 'Payment journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_journal
      @payment_journal = PaymentJournal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_journal_params
      params.require(:payment_journal).permit(:description, :amount)
    end
end
