describe 'Voyage' do
  let!(:preuben){Ship.new("Preuben", 8)}
  let!(:el_gamo){Ship.new("El Gamo", 6)}
  let!(:speedy){Ship.new("Speedy", 1)}

  it 'Commissioned to transport 8 Tonne of gold. RESULT: 1 Preuben.' do
    expect(Voyage.new(8).ships.first).to eq(preuben)
  end

  it 'Commissioned to transport 14 Tonne of gold. RESULT: 1 Preuben, 1 El Gamo.' do
    expect(Voyage.new(14).ships).to match_array([preuben, el_gamo])
  end

  it "Commissioned to transport 12 Tonne of gold. RESULT: 2 El Gamo's" do
    expect(Voyage.new(12).ships).to match_array([el_gamo, el_gamo])
  end
end
