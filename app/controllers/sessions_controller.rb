class SessionsController < ProtectedController # ProtectedController OpenReadController
  before_action :set_session, only: [:show, :update, :destroy]

  # GET /sessions
  def index
    @sessions = Session.all

    render json: @sessions
  end

  # GET /sessions/1
  def show
    # render json: Session.find(params[:id])
    render json: @session
  end

  # POST /sessions
  def create
    @session = current_user.sessions.build(session_params)
    # @session = Session.new(session_params)

    if @session.save
      render json: @session, status: :created
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      render json: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_session
      # @session = current_user.sessions.find(params[:id])
      @session = Session.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_params
      # params.fetch(:session, {})
      params.require(:session).permit(:program, :session_date, :session_rating, :helm, :crew, :wind_dir, :wind_strength, :chop, :objective_1, :objective_2, :objective_3, :objective_4, :objective_5, :session_report, :boat_maint, :boat_maint_info)
    end

    private :set_session, :session_params
end
