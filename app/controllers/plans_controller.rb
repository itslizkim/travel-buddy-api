class PlansController < ApplicationController

    def index 
        render json: Plan.all
    end

    def create
        plan = Plan.create(plan_params)
        render json: plan

    end

    def update
    end

    def destroy 
        plan = Plan.find(params[:id])
        plan.destroy_all 
        render json: {success: "Maybe, Next Time!"}
    end


    private

    def plan_params
        params.permit(:date, :time, :username, :activity_id)
    end
end
