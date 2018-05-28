class Note < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :lists, through: :list_items

  validates :title, presence: true
  validates :topic, presence: true


  def specialLines=(linesObj)
    linesObj.keys.each do |keyword|
      list = user.lists.find_or_create_by(keyword: keyword)
      byebug
      linesObj[keyword].each do |line|
        list_item = list.list_items.create(content: line)
        self.list_items << list_item
      end

    end
  end


end
