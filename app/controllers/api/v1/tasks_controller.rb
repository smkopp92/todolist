class Api::V1::TasksController < ApplicationController
  def index
    render json: Task.all, each_serializer: TaskSerializer
  end

  def create
    Task.create(name: request.body.read)
  end
end
