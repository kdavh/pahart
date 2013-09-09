require 'spec_helper'

describe Album do
  it { should respond_to :title}
  it { should respond_to :description}
  it { should respond_to :date_recorded}
  it { should have_many :recording_albums }
  it { should have_many(:recordings) }
  it { should have_many(:songs).through(:recordings) }
end
