class Api::V1::NotesController < ApplicationController

  def index
    @notes = Note.all

    render json: {users: @notes}
  end

  def show
    @note = Note.find(note_params[:id])

    render json: {note: @note}
  end

  def create
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
     params.require(:note).permit(:title, :topic, :professor, :location, :user_id, :full_text, :specialLines => {})
  end

end
