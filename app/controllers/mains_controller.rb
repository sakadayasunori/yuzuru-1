class MainsController < ApplicationController
  def index
  end

  private
    def search
    # #Viewのformで取得したパラメータをモデルに渡す
    @mains = Main.search(params[:search])
    end
end
