#!/usr/bin/env ruby 

require "./lib/bloodtype_2019"
Scraper.fetch_bloodtypes
MealSuggestor.new.suggest