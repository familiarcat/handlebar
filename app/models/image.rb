class Image < ActiveRecord::Base
  belongs_to :menu_item
  has_attached_file :file, :styles => {
		:original => '1000x1000>',
		:large    => '600x600>',
		:medium   => '300x300>',
		:small    => '100x100>',
		:thumb    => '30x30>'
	}
end
