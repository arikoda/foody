class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  #before_action :allergy_string, only: [:create, :edit]
  before_action :set_date, only: [:index, :show, :search]
  def index
    @foods = Food.all.order("expriation_date ASC")

  end

  def edit
  end

  def show
  end

  def destroy
    if @food.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
    #binding.pry
    if @food.save
      redirect_to root_path
    else
      render :new , alert: @food.errors.full_messages
    end
    
  end

  def update
    @food.update(food_params)
  end

  def search
    @foods = Food.search(params[:keyword])

  end

  private

  def food_params
    params.require(:food).permit(:name, :image, :amount, :expriation_date, :count, :category_id, allergy_id:[])
  end

  def set_food
    @food = Food.find(params[:id])
  end

  def set_date
    today = Time.new
    @date = today.since(3.days)
  end
 # def allergy_string
  #  params[:food][:allergy_id].join(",")
 # end
end
