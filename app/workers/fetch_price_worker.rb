class FetchPriceWorker
  include SuckerPunch::Job
  workers 1

  def perform(*args)
    begin
      ActiveRecord::Base.connection_pool.with_connection do
        RecordedPrice.fetch_prices
      end
    rescue
    end
  ensure
    self.class.perform_in(Settings.refresh_ticker_seconds)
  end

end
