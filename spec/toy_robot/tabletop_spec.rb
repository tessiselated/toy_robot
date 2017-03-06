require 'spec_helper'

describe "Tabletop" do

  subject{ ToyRobot::Tabletop.new(5,5) }
  let(:xposition) { 0 }
  let(:yposition) { 0 }
  context "valid locations" do

    describe "southwest corner" do
      it "should return valid location" do
        expect(subject.valid_location?(xposition, yposition)).to be true
      end
    end

    describe "northeast corner" do
      let(:xposition) { 4 }
      let(:yposition) { 4 }
      it "should return valid location" do
        expect(subject.valid_location?(xposition, yposition)).to be true
      end
    end

    describe "middle of tabletop" do
      let(:xposition) { 2 }
      let(:yposition) { 3 }
      it "should return valid location" do
        expect(subject.valid_location?(xposition, yposition)).to be true
      end
    end

  end

  context "invalid locations" do

    describe "past north edge of table" do
      let(:xposition) { 5 }
      it "should return invalid location" do
        expect(subject.valid_location?(xposition, yposition)).to be false
      end
    end

    describe "past east edge of table" do
      let(:yposition) { 5 }
      it "should return invalid location" do
        expect(subject.valid_location?(xposition, yposition)).to be false
      end
    end

    describe "past south edge of table" do
      let(:xposition) { -1 }
      it "should return invalid location" do
        expect(subject.valid_location?(xposition, yposition)).to be false
      end
    end

    describe "past west edge of table" do
      let(:yposition) { -1 }
      it "should return invalid location" do
        expect(subject.valid_location?(xposition, yposition)).to be false
      end
    end

  end
end
