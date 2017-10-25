# coding: utf-8

  COLA_PRICE = 100

  step "edyに :yen 円チャージされている" do |name|
    @money = name.to_i
  end
  
  step "コーラのボタンを押した" do
    @money -= COLA_PRICE if @money >= COLA_PRICE
  end
  
  step "コーラが出てくる" do
    expect(@money).to be >= COLA_PRICE
  end
  
  step "コーラが出てこない" do
    expect(@money).to be < COLA_PRICE
  end

  step "残高が :zandaka 円" do |expected|
    expect(@money).to be == expected.to_i
  end