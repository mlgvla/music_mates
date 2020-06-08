class InstrumentsController < ApplicationController

  # GET: /instruments
  get "/instruments" do
    authentication_required
    @instruments = Instrument.all
    erb :"/instruments/index.html"
  end

  # GET: /instruments/new
  # get "/instruments/new" do
  #   erb :"/instruments/new.html"
  # end

  # # POST: /instruments
  # post "/instruments" do
  #   redirect "/instruments"
  # end

  # GET: /instruments/5
  get "/instruments/:id" do
    authentication_required
    @instrument = Instrument.find(params[:id])

    musicians_unsorted = User.where(visibility: "public").joins(:user_instruments).where(user_instruments: {instrument_id: params[:id]})
    @musicians = musicians_unsorted.sort_by{ |musician| musician.last_name }
    # @musicians = User.joins(:user_instruments).where(user_instruments: {instrument_id: params[:id]})
    erb :"/instruments/show.html"
  end

  # # GET: /instruments/5/edit
  # get "/instruments/:id/edit" do
  #   erb :"/instruments/edit.html"
  # end

  # # PATCH: /instruments/5
  # patch "/instruments/:id" do
  #   redirect "/instruments/:id"
  # end

  # # DELETE: /instruments/5/delete
  # delete "/instruments/:id/delete" do
  #   redirect "/instruments"
  # end
end
