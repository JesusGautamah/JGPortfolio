class Project < ApplicationRecord
  belongs_to :user

  has_many :articles
  has_many :docs
  has_many :git_repositories
  has_many :videos


  
end
