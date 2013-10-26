class AddScanningColumnToTransactions < ActiveRecord::Migration
  def change
  	def self.up
    	add_attachment :transactions, :scanning
  	end

  	def self.down
    	remove_attachment :transactions, :scanning
  	end
  end
end
