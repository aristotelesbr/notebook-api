class Contact < ApplicationRecord
	belongs_to :kind #, optional: true

	# def author
	# 	"Ari"
	# end

	# def kind_description
	# 	self.kind.description
	# end

	# def as_json(options={})
	# 	super(
	# 		methods: [:kind_description, :author],
	# 	 	root: true,
	# 	 	# Include "aninha" a informação do modelo relacionado.
	# 	 	include: { kind: { only: :description} }
	# 	)
	# end
end
