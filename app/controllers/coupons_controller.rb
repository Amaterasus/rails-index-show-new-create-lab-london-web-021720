class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
        
    end

    def show
        @coupon = Coupon.find_by(id: params[:id])
    end

    def create
        student = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to student
    end
    
end