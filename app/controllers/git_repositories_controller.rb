class GitRepositoriesController < ApplicationController
  before_action :set_git_repository, only: %i[ show edit update destroy ]

  # GET /git_repositories or /git_repositories.json
  def index
    @git_repositories = GitRepository.all
  end

  # GET /git_repositories/1 or /git_repositories/1.json
  def show
  end

  # GET /git_repositories/new
  def new
    @git_repository = GitRepository.new
  end

  # GET /git_repositories/1/edit
  def edit
  end

  # POST /git_repositories or /git_repositories.json
  def create
    @git_repository = GitRepository.new(git_repository_params)

    respond_to do |format|
      if @git_repository.save
        format.html { redirect_to @git_repository, notice: "Git repository was successfully created." }
        format.json { render :show, status: :created, location: @git_repository }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @git_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /git_repositories/1 or /git_repositories/1.json
  def update
    respond_to do |format|
      if @git_repository.update(git_repository_params)
        format.html { redirect_to @git_repository, notice: "Git repository was successfully updated." }
        format.json { render :show, status: :ok, location: @git_repository }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @git_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /git_repositories/1 or /git_repositories/1.json
  def destroy
    @git_repository.destroy
    respond_to do |format|
      format.html { redirect_to git_repositories_url, notice: "Git repository was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_git_repository
      @git_repository = GitRepository.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def git_repository_params
      params.require(:git_repository).permit(:project_id, :link, :title)
    end
end
