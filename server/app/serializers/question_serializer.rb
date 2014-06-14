class QuestionSerializer < ActiveModel::Serializer
  include ActionView::Helpers::TextHelper

  embed :ids

  attributes :id, :title, :body, :preview

  def preview
    object.body.truncate(250)
  end
end
