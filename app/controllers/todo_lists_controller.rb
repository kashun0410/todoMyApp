class TodoListsController < ApplicationController
  # before_action :set_todoList

  def index
    @todoLists = TodoList.includes(:user)
  end

  def new
    @todoLists = TodoList.new
  end

  def create
    TodoList.create(post_params)
    redirect_to root_path
  end

  def show
    @todoLists = Todolist.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    todoList = TodoList.find(params[:id])
    todoList.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:todo_list).permit(:title, :content).merge(user_id: current_user.id)
  end

end
