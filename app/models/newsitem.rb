class Newsitem < ActiveRecord::Base
	validates :name, :presence => true
	
	scope :last, lambda { |n=1| order('created_at desc').limit(n) }
	scope :for_page, lambda { |p, per_page| order('created_at desc').limit(per_page).offset(p > 0 ? (p-1)*per_page : 0) }
	
	def self.pages_count(per_page)
		n = self.count
		n = n/per_page + (n % per_page == 0 ? 0 : 1)
		n
	end
end
