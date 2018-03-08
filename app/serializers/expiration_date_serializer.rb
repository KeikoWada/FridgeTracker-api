class ExpirationDateSerializer < ActiveModel::Serializer
  attributes :id, :date, :item_name, :category
end
