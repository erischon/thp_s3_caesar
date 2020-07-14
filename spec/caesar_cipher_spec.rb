require_relative '../lib/caesar_cipher'

describe "Trouver la lettre correspondante" do
  it "Trouver la lettre correspondante" do
    expect(find_letter("a", 1)).to eq("b")
    expect(find_letter("A", 1)).to eq("B")
    expect(find_letter("z", 1)).to eq("a")
    expect(find_letter("Z", 1)).to eq("A")
    expect(find_letter("a", 100)).to eq("w")
    expect(find_letter("A", 100)).to eq("W")
    expect(find_letter(" ", 100)).to eq(" ")
    expect(find_letter(",", 100)).to eq(",")
  end
end

describe "Trouver la phrase chiffrée" do
  it "Un seul mot" do
    expect(convert_sentence("Bonjour", 5)).to eq("Gtsotzw")
  end

  it "Phrase complète" do
    expect(convert_sentence("Bonjour, comment tu vas ?", 5)).to eq("Gtsotzw, htrrjsy yz afx ?")
  end
end

describe "" do
  it "" do
    expect(render("Gtsotzw")).to eq("Résultat : Gtsotzw")
  end
end
