class MonthlyTextCalculator
  attr_reader :tax_percentage, :tax_free_limit
  # tax_free_limit is the monthly salary with no tax

  def initialize(_tax_percentage, _tax_free_limit = 0)
    @tax_percentage = _tax_percentage
    @tax_free_limit = _tax_free_limit
  end

  def calculate
    (total_taxable_salaries * @tax_percentage) / 100
  end

  private

  def total_taxable_salaries
    Employee.where("current_salary > ?", @eligible_amount).map(:current_salary).sum
  end

end