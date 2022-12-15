class DocumentsController < ApplicationController

	before_action :set_document, only: [:edit, :update, :show, :destroy] 

	def index
		@documents = Document.all
	end

	def new
		@document = Document.new
	end

	def create
		@document = Document.new(name: params[:document][:name], doc_type: params[:document][:doc_type], employee_id: params[:document][:employee_id], image: params[:document][:image])
		if @document.save
			redirect_to documents_path, notice: 'Documents has been created successfully'
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @document.update(name: params[:document][:name], doc_type: params[:document][:doc_type], employee_id: params[:document][:employee_id], image: params[:document][:image])
	    redirect_to documents_path, notice: 'Document has been updated successfully'
	else
		render :edit
	end
end

def show
	
end

def destroy
	@document.destroy
	redirect_to documents_path
end

def set_document
	@document = Document.find(params[:id])
rescue ActiveRecord::RecordNotFound => error
	redirect_to documents_path, notice: error
end
end