require 'spec_helper'

describe ToyRobot::Simulation do

  context "a new instance of the simulation" do

    before(:each) do
      @tabletop = ToyRobot::Tabletop.new(5,5)
    end

    subject { ToyRobot::Simulation.new(@tabletop) }

    it "initiates a new instance of the simulation" do
      expect(subject.class).to eq(ToyRobot::Simulation)
    end

    it "it places a robot in response to a place command" do
      expect(subject.place(2,3,"WEST").class).to eq(ToyRobot::Robot)
    end

    it "does not place a robot in an invalid location" do
      response = "That's not on the table\n"
      expect{ subject.place(5,5,"EAST") }.to output(response).to_stdout
    end

    it "does not place the robot when the facing argument is invalid" do
      response = "3 is not a valid direction, please use NORTH, EAST, WEST or SOUTH\n"
      expect{ subject.place(1,3,3) }.to output(response).to_stdout
    end


  end

  context "a robot has been placed" do

    before(:each) do
      @tabletop = ToyRobot::Tabletop.new(5,5)
      @simulation = ToyRobot::Simulation.new(@tabletop)
      @simulation.place(0,0,"NORTH")
    end

    subject { @simulation }

    it "changes position of the robot" do
      subject.move
      expect(subject.robot.xposition).to eq(1)
    end

    it "turns turns the robot left" do
      subject.turn_left
      expect(subject.robot.facing).to eq("WEST")
    end

    it "turns turns the robot right" do
      subject.turn_right
      expect(subject.robot.facing).to eq("EAST")
    end

    it "doesn't allow the robot to fall off the table" do
      6.times { subject.move }
      expect(subject.robot.xposition).to eq(4)
      response = "I don't want to fall off the table!\n"
      expect{ subject.move }.to output(response).to_stdout
    end

    it "reports on the robots location" do
      2.times { subject.move }
      subject.turn_right
      response = "My name is Jane and I am at position 2, 0 and I am facing EAST\n"
      expect{ subject.report }.to output(response).to_stdout
    end

  end


end
