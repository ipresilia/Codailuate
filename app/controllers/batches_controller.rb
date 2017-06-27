class BatchesController < ApplicationController
  def show
    @batch = Batch.find(params[:id])
  end
end
