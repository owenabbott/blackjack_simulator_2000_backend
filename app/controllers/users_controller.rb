class UsersController < ApplicationController
    def index

        users = User.all.sort_by{|user| user.bank_account}
        users = users.reverse
        puts "#####################################################################################################################"
        puts users[0].bank_account
        puts users[1].bank_account
        puts users[2].bank_account
        puts "#####################################################################################################################"

        if User.all.length >= 10
            users = users[0...10]
        end

        render json: users
    end

    def create
        user = User.create(name: params.values[0], bank_account: 2000)
        render json: user
        # user= User.create({name: })
        puts params.values
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        puts "#####################################################################################################################"
        puts params
        puts params
        puts "#####################################################################################################################"

        user.update({bank_account: params.values[0]})
        render json: user
        
    end

end

