# frozen_string_literal: true

RSpec.describe DesafioDeRailsAvancado do
  it "verifica se a versão está present" do
    expect(DesafioDeRailsAvancado::VERSION).not_to be nil
  end

  it "Um teste que iremos fazer" do
    expect(false).to eq(true)
  end
end
