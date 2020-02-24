class TodoListsController < ApplicationController
  # before_action :set_todoList

  def index
    @todoLists = TodoList.all
  end

  def new
    @todoLists = TodoList.new
  end

  def create
    TodoList.create(post_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:todo_list).permit(:title, :content)
  end

end
