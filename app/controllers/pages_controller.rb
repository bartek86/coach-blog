class PagesController < ApplicationController

	def home
		flash[:success] = " you got home "
		flash[:danger] = " you got home "	
		flash[:info] = " you got home "
		flash[:warning] = " you got home "
	end

	def about
		
	end
end
