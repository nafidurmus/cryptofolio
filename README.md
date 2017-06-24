[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/netuoso/cryptofolio)

# README

## Cryptocurrency Price Ticker
- Queries CoinMarketCap for list of coins
- Creates `Coin` records with names of coins and symbol
- Creates `RecordedPrice` records with coin price data
	- Rank
	- Price USD
	- Price BTC
	- Market Cap
	- Volume 24 hour
	- Percent change 1 hour
	- Percent change 24 hours
	- Percent change 7 days
	- Time last updated
- Uses suckerpunch to update price info every 60 seconds

## Configuration
- Change `refresh_ticker_seconds` under `config/settings.yml` to alter how often to update

## One Click Deploy
- Click the "Deploy To Heroku" button above

## Contributing
- Fork the repo
- Make a PR
- Create issue
- Spelling fixes
- Get people involved in crypto

## License
- WTFPL v2
