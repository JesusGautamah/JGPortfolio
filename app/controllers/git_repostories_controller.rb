class GitRepostoriesController < ApplicationController
  before_action :set_git_repostory, only: %i[ show edit update destroy ]

  # GET /git_repostories or /git_repostories.json
  def index
    @git_repostories = GitRepostory.all
  end

  # GET /git_repostories/1 or /git_repostories/1.json
  def show
  end

  # GET /git_repostories/new
  def new
    @git_repostory = GitRepostory.new
  end

  # GET /git_repostories/1/edit
  def edit
  end

  # POST /git_repostories or /git_repostories.json
  def create
    @git_repostory = GitRepostory.new(git_repostory_params)

    respond_to do |format|
      if @git_repostory.save
        format.html { redirect_to @git_repostory, notice: "Git repostory was successfully created." }
        format.json { render :show, status: :created, location: @git_repostory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @git_repostory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /git_repostories/1 or /git_repostories/1.json
  def update
    respond_to do |format|
      if @git_repostory.update(git_repostory_params)
        format.html { redirect_to @git_repostory, notice: "Git repostory was successfully updated." }
        format.json { render :show, status: :ok, location: @git_repostory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @git_repostory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /git_repostories/1 or /git_repostories/1.json
  def destroy
    @git_repostory.destroy
    respond_to do |format|
      format.html { redirect_to git_repostories_url, notice: "Git repostory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_git_repostory
      @git_repostory = GitRepostory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def git_repostory_params
      params.require(:git_repostory).permit(:project_id, :link, :title)
    end
end
