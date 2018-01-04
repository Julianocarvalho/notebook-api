class Contact < ApplicationRecord
	#Associations
	belongs_to :kind
	has_many :phones

	def as_json(options={})
		super(
			root: true,
			include: {kind: {only: :description}}

			)
	end
end
