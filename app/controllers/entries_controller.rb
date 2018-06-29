# frozen_string_literal: true

class EntriesController < ProtectedController
  before_action :set_entry, only: %i[show update destroy]

  # GET /entries
  def index
    @entries = current_user.entries.all

    render json: @entries
  end

  # GET /entries/1
  def show
    render json: @entry
  end

  # POST /entries
  def create
    # @entry = Entry.new(entry_params)
    @entry = current_user.entries.build(entry_params)

    if @entry.save
      render json: @entry, status: :created
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      render json: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = current_user.entries.find(params[:id])
  end
  # Only allow a trusted parameter "white list" through.

  def entry_params
    params.require(:entry).permit(:thought, :distortion, :response, :date)
  end
end
