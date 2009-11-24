class Thing < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    price     :decimal
    is_active :boolean
    timestamps
  end

  belongs_to :category
  belongs_to :thing_pattern
  has_many :somethings, :accessible => true, :dependent => :destroy
  validates_presence_of :price, :thing_pattern, :category

  validate :test_me

  def test_me
    ##require 'ruby-debug'; debugger
    pp 17
  end
  


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
