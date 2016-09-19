# account log is responsible for printing out tansaction history
class AccountLogPrinter

  def print(log)
    puts "date || credit || debit || balance"
    log.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end
