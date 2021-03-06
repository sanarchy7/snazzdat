module BudgetConstants

  RANGE_0_100 = {code:1, name:"$0 - $100"}
  RANGE_100_200 = {code: 2, name:"$100 - $200"}
  RANGE_200_300 = {code: 3, name:"$200 - $300"}
  RANGE_300_400 = {code: 4, name:"$300 - $400"}
  RANGE_400_500 = {code: 5, name:"$400 - $500"}
  RANGE_500_PLUS = {code: 6, name:"$500+"}
  RANGE_DEPENDS = {code: 7, name: "It Depends"}
  RANGE_OTHER = {code: 8, name: "Just Make Me Look Good"}
  RANGE_NOT_SURE = {code: 9, name: "Not Sure"}

  ALL = self.constants.map(&:to_s).map{|a|"#{self.to_s}::#{a}".constantize}
  
  
  def self.find_by_code code
    item = nil
    ALL.each do |range|
      if item.nil? && range[:code] == code.to_i
        item = range
      end
    end
    item
  end
end

=begin
$30-$99
$100-$199
$200-299
$300-$399
$400-$499
 It Depends
Just Make Me Look Good
=end