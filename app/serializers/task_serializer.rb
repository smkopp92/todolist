class TaskSerializer < ActiveModel::Serializer
  attributes :id, :capitalized_name

  def capitalized_name
    object.name.upcase
  end
end
