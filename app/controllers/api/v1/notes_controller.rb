class Api::V1::NotesController < Api::V1::ApplicationController

  def index
    # byebug
    @user_notes = Note.all.select do |note|
      note.user_id == note_params[:user_id].to_i
    end

    # byebug

    render json: {notes: @user_notes}
  end

  def show
    @note = Note.find(note_params[:id])

    render json: {note: @note}
  end

  def create

    byebug
    @note = Note.create(note_params)

    render json: {note: @note}
  end

  def update
    @note = Note.find(note_params[:id])
    @note.update(note_params)

    render json: {note: @note}
  end

  private

  def note_params
     params.permit(:title, :topic, :professor, :location, :user_id, :full_text, :specialLines => {})
  end

end
