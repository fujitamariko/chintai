class PropertiesController < ApplicationController
    def index
        @properties = Property.all
    end
    def new
        @property = Property.new
    end
    def create
        @property = Property.new(property_params)
        if @property.save
            redirect_to properties_path, notice: "物件情報を登録しました！"
        else
            render :new
        end
    end
    def show
        @property = Property.find(params[:id])
    end

    private
    def property_params
        params.require(:property).permit(:name, :rent, :address, :age, :content)
    end
end