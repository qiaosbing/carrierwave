class FileMsgsController < ApplicationController
  before_action :set_file_msg, only: [:show, :edit, :update, :destroy]

  # GET /file_msgs
  # GET /file_msgs.json
  def index
    localfile = params[:localfile]
    s_file =  FileMsg.new
    Rails.logger.info "---1--#{localfile.inspect}"
    s_file.file_url = localfile
    s_file.save
    Rails.logger.info "---2--#{s_file.inspect}"

  end

  # GET /file_msgs/1
  # GET /file_msgs/1.json
  def show
  end

  # GET /file_msgs/new
  def new
    @file_msg = FileMsg.new
  end

  # GET /file_msgs/1/edit
  def edit
  end

  # POST /file_msgs
  # POST /file_msgs.json
  def create
    @file_msg = FileMsg.new(file_msg_params)

    respond_to do |format|
      if @file_msg.save
        format.html { redirect_to @file_msg, notice: 'File msg was successfully created.' }
        format.json { render :show, status: :created, location: @file_msg }
      else
        format.html { render :new }
        format.json { render json: @file_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_msgs/1
  # PATCH/PUT /file_msgs/1.json
  def update
    respond_to do |format|
      if @file_msg.update(file_msg_params)
        format.html { redirect_to @file_msg, notice: 'File msg was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_msg }
      else
        format.html { render :edit }
        format.json { render json: @file_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_msgs/1
  # DELETE /file_msgs/1.json
  def destroy
    @file_msg.destroy
    respond_to do |format|
      format.html { redirect_to file_msgs_url, notice: 'File msg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_msg
      @file_msg = FileMsg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def file_msg_params
      params.fetch(:file_msg, {})
    end
end
