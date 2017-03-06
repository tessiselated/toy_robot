require "spec_helper"

describe ToyRobot::Robot do

  context "robot facing north" do
    subject { ToyRobot::Robot.new(0,0,"NORTH") }

    it "moves two spaces north" do
      2.times { subject.move }
      expect(subject.xposition).to eq(2)
    end

    it "moves three spaces north" do
      3.times { subject.move }
      expect(subject.xposition).to eq(3)
    end

  end

  context "robot facing east" do
    subject { ToyRobot::Robot.new(0,0,"EAST") }

    it "moves two spaces east" do
      2.times { subject.move }
      expect(subject.yposition).to eq(2)
    end

    it "moves three spaces east" do
      3.times { subject.move }
      expect(subject.yposition).to eq(3)
    end

  end

  context "robot facing south" do
    subject { ToyRobot::Robot.new(0, 0, "SOUTH") }

    it "moves two spaces south" do
      2.times { subject.move }
      expect(subject.xposition).to eq(-2)
    end

    it "moves three spaces south" do
      3.times { subject.move }
      expect(subject.xposition). to eq(-3)
    end

  end

  context "robot facing west" do
    subject { ToyRobot::Robot.new(0, 0, "WEST") }

    it "moves two spaces west" do
      2.times { subject.move }
      expect(subject.yposition).to eq(-2)
    end

    it "moves three spaces west" do
      3.times { subject.move }
      expect(subject.yposition).to eq(-3)
    end
    
  end
end
