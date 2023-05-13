class PagesController < ApplicationController
    def about
        @title = 'About Mimi'
        @content = 'This is a mimi project for Mimi to deploy'
    end
end
