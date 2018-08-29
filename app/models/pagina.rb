class Pagina < ApplicationRecord
  belongs_to :parametro, optional: true
end
