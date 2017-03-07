require 'spec_helper'

describe ToyRobot::Command do

  it "processes a place command" do
    command, *args = ToyRobot::Command.process("PLACE 3,2,EAST")
    expect(command).to eq(:place)
    expect(args).to eq([3, 2, "EAST"])
  end

  it "processes a report command" do
    command, *args = ToyRobot::Command.process("REPORT")
    expect(command).to eq(:report)
    expect(args).to be_empty
  end

  it "processes a turn left command" do
    command, *args = ToyRobot::Command.process("LEFT")
    expect(command).to eq(:turn_left)
    expect(args).to be_empty
  end

  it "processes a turn right command" do
    command, *args = ToyRobot::Command.process("RIGHT")
    expect(command).to eq(:turn_right)
    expect(args).to be_empty
  end

  it "processes an invalid command" do
    command, *args = ToyRobot::Command.process("PUT 4,3,EAST")
    expect(command).to eq(:invalid)
    expect(args).to eq(["PUT 4,3,EAST"])
  end

  it "processes a lowercase command" do
    command, *args = ToyRobot::Command.process("place 2,3,east")
    expect(command).to eq(:place)
    expect(args).to eq([2, 3, "EAST"])
  end


end
