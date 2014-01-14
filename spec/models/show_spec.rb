# == Schema Information
#
# Table name: shows
#
#  id          :integer          not null, primary key
#  date        :date
#  venue       :string(255)
#  address     :string(255)
#  city        :string(255)
#  state       :string(255)
#  venue_phone :string(255)
#  notes       :text
#  tickets_url :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Show do
  pending "add some examples to (or delete) #{__FILE__}"
end
