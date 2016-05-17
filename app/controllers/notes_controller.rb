class NotesController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@notes = current_user.notes.order(:created_at).paginate(:page => params[:page], :per_page => 20)
	end

	def show
		@note = current_user.notes.find(params[:id])
	end

  	def new
    	@note = Note.new
  	end

  	def create
  		@note = current_user.notes.create(note_params)
 
    	if @note.save
      		redirect_to @note
    	else
      		render 'new'
    	end
  	end

  	def edit
      	@note = current_user.notes.find(params[:id])
  	end

  	def update
    	@note = current_user.notes.find(params[:id])
 
    	if @note.update(note_params)
      		redirect_to @note
    	else
      		render 'edit'
    	end
  	end

  	def destroy
  		@note = current_user.notes.find(params[:id])
  		@note.destroy

  		redirect_to notes_path
  	end

  		private

  	def note_params
  		params.require(:note).permit(:title, :content)
  	end
end
