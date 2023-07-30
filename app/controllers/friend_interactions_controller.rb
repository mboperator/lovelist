class FriendInteractionsController < ApplicationController
  before_action :set_friend_interaction, only: %i[ show edit update destroy ]

  # GET /friend_interactions or /friend_interactions.json
  def index
    @friend_interactions = FriendInteraction.all
  end

  # GET /friend_interactions/1 or /friend_interactions/1.json
  def show
  end

  # GET /friend_interactions/new
  def new
    @friend_interaction = FriendInteraction.new
  end

  # GET /friend_interactions/1/edit
  def edit
  end

  # POST /friend_interactions or /friend_interactions.json
  def create
    @friend_interaction = FriendInteraction.new(friend_interaction_params)

    respond_to do |format|
      if @friend_interaction.save
        format.html { redirect_to friend_interaction_url(@friend_interaction), notice: "Friend interaction was successfully created." }
        format.json { render :show, status: :created, location: @friend_interaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friend_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_interactions/1 or /friend_interactions/1.json
  def update
    respond_to do |format|
      if @friend_interaction.update(friend_interaction_params)
        format.html { redirect_to friend_interaction_url(@friend_interaction), notice: "Friend interaction was successfully updated." }
        format.json { render :show, status: :ok, location: @friend_interaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friend_interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_interactions/1 or /friend_interactions/1.json
  def destroy
    @friend_interaction.destroy

    respond_to do |format|
      format.html { redirect_to friend_interactions_url, notice: "Friend interaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_interaction
      @friend_interaction = FriendInteraction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_interaction_params
      params.require(:friend_interaction).permit(:friend_id, :interaction_id)
    end
end
