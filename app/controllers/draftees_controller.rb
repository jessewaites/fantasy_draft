class DrafteesController < ApplicationController
  before_filter :require_user_signed_in, only: [:new, :show, :edit, :create, :update, :destroy]
  before_action :set_draftee, only: [:show, :draft, :undraft, :edit, :update, :destroy]

  def index
    @draftees = Draftee.all
  end

  def show
  end

  def new
    @draftee = Draftee.new
  end

  def edit
  end

  def draft
    if !@draftee.drafted
      @draftee.draft(params[:user_id])
    else
      flash[:alert] = "already drafted"
    end
      redirect_to draftees_path
  end

  def undraft
    @draftee.drafted && @draftee.user_id == params[:user_id]
    @draftee.undraft
    redirect_to draftees_path
  end

  def create
    @draftee = Draftee.new(draftee_params)
    @draftee.user = current_user

    respond_to do |format|
      if @draftee.save
        format.html { redirect_to @draftee, notice: 'Draftee was successfully created.' }
        format.json { render :show, status: :created, location: @draftee }
      else
        format.html { render :new }
        format.json { render json: @draftee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @draftee.update(draftee_params)
        format.html { redirect_to @draftee, notice: 'Draftee was successfully updated.' }
        format.json { render :show, status: :ok, location: @draftee }
      else
        format.html { render :edit }
        format.json { render json: @draftee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @draftee.destroy
    respond_to do |format|
      format.html { redirect_to draftees_url, notice: 'Draftee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_draftee
      @draftee = Draftee.find(params[:id])
    end

    def draftee_params
      params.require(:draftee).permit(:id, :fan_name, :img_url, :fav_team, :why_draft_me, :fav_bose_product, :user_id, :fan_score, :drafted)
    end
end
