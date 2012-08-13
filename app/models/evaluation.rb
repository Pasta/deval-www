class Evaluation < ActiveRecord::Base
  attr_accessible :answer, :executed, :name, :tries
end
