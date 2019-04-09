require 'calabash-android/management/app_installation'
require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  scenario_tags = scenario.source_tag_names
  clear_app_data
end