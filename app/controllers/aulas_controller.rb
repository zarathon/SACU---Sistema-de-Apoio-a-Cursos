class AulasController < ApplicationController
  # GET /aulas
  # GET /aulas.json
  def index
    #@aulas = Aula.all
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @aulas }
    #end
    redirect_to(:cursos)
  end

  # GET /aulas/1
  # GET /aulas/1.json
  def show
    @aula = Aula.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aula }
    end
  end

  # GET /aulas/new
  # GET /aulas/new.json
  def new
    @aula = Aula.new
    @aula.curso_id = params[:id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aula }
    end
  end

  # GET /aulas/1/edit
  def edit
    @aula = Aula.find(params[:id])
  end

  # POST /aulas
  # POST /aulas.json
  def create
    @aula = Aula.new(params[:aula])

    respond_to do |format|
      if @aula.save
        format.html { redirect_to @aula, notice: 'Aula criada com sucesso.' }
        format.json { render json: @aula, status: :created, location: @aula }
      else
        format.html { render action: "new" }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aulas/1
  # PUT /aulas/1.json
  def update
    @aula = Aula.find(params[:id])

    respond_to do |format|
      if @aula.update_attributes(params[:aula])
        format.html { redirect_to @aula, notice: 'Aula alterada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aulas/1
  # DELETE /aulas/1.json
  def destroy
    @aula = Aula.find(params[:id])
    @aula.destroy

    respond_to do |format|
      format.html { redirect_to aulas_url }
      format.json { head :no_content }
    end
  end
end
