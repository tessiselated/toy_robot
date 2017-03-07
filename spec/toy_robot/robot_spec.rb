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

    it "turns left to face west" do
      subject.turn_left
      expect(subject.facing).to eq("WEST")
    end

    it "turns right to face east" do
      subject.turn_right
      expect(subject.facing).to eq("EAST")
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

    it "turns left to face north" do
      subject.turn_left
      expect(subject.facing).to eq("NORTH")
    end

    it "turns right to face south" do
      subject.turn_right
      expect(subject.facing).to eq("SOUTH")
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

    it "turns left to face east" do
      subject.turn_left
      expect(subject.facing).to eq("EAST")
    end

    it "turns right to face west" do
      subject.turn_right
      expect(subject.facing).to eq("WEST")
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

    it "turns left to face south" do
      subject.turn_left
      expect(subject.facing).to eq("SOUTH")
    end

    it "turns right to face north" do
      subject.turn_right
      expect(subject.facing).to eq("NORTH")
    end

  end

  context "robot in the middle of the table" do
    subject {ToyRobot::Robot.new(3, 3, "EAST")}

    it "reports its position, direction and name" do
      expect(subject.report).to eq({:xposition=>3, :yposition=>3, :facing=>"EAST", :name=>"Jane"})
    end

    it "reports its position, direction and name after moving" do
      subject.move
      expect(subject.report).to eq({:xposition=>3, :yposition=>4, :facing=>"EAST", :name=>"Jane"})
    end

    it "reports its position, direction and name after turning left" do
      subject.turn_left
      expect(subject.report).to eq({:xposition=>3, :yposition=>3, :facing=>"NORTH", :name=>"Jane"})
    end

  end
end
