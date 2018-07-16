class CG

  PRISON = 5

  EV021 = [
    { # touch
      :control => { :playing => false },
      :base => { :file => 'ev021/EV021_BaseA01.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesA01.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonA01.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtA01.png', :z => 3, :switch => SKIRT },
    },
    { # rub
      :control => { :playing => false },
      :base => { :file => '' },
      :panties => { :file => '', :switch => PANTY },
      :prison => { :file => '', :switch => PRISON },
      :skirt => { :file => '', :switch => SKIRT },
      :loop => { :play => 'EV021_RUB' },
    },
    { # insert
      :control => { :wait => 20 },
      :base => { :file => 'ev021/EV021_BaseB01.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesB01.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonB01.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtB01.png', :z => 3, :switch => SKIRT },
      :loop => { :stop => 'EV021_RUB' },
    },
    {
      :control => { :playing => false },
      :base => { :file => '' },
      :panties => { :file => '', :switch => PANTY },
      :skirt => { :file => '', :switch => SKIRT },
      :prison => { :file => '', :switch => PRISON },
      :loop => { :play => 'EV021_INSERT' },
    },
    { # deeper
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseC01.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesC01.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonC01.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtC01.png', :z => 3, :switch => SKIRT },
      :loop => { :stop => 'EV021_INSERT' },
    },
    {
      :control => { :playing => false },
      :base => { :file => '' },
      :panties => { :file => '', :switch => PANTY },
      :skirt => { :file => '', :switch => SKIRT },
      :loop => { :play => 'EV021_DEEPER' },
    },
    { # end
      :loop => { :stop => 'EV021_DEEPER' },
    },
  ]

  EV021_RUB = [
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseA01.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesA01.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonA01.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtA01.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseA02.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesA02.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonA02.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtA02.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseA03.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesA03.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonA03.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtA03.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10, :seek => 0 },
      :base => { :file => 'ev021/EV021_BaseA02.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesA02.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonA02.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtA02.png', :z => 3, :switch => SKIRT },
    },
  ]

  EV021_INSERT = [
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseB01.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesB01.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonB01.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtB01.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 20 },
      :base => { :file => 'ev021/EV021_BaseB02.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesB02.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonB02.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtB02.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseB03.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesB03.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonB03.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtB03.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10, :seek => 0 },
      :base => { :file => 'ev021/EV021_BaseB02.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesB02.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonB02.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtB02.png', :z => 3, :switch => SKIRT },
    },
  ]

  EV021_DEEPER = [
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseC01.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesC01.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonC01.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtC01.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 20 },
      :base => { :file => 'ev021/EV021_BaseC02.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesC02.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonC02.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtC02.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10 },
      :base => { :file => 'ev021/EV021_BaseC03.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesC03.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonC03.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtC03.png', :z => 3, :switch => SKIRT },
    },
    {
      :control => { :wait => 10, :seek => 0 },
      :base => { :file => 'ev021/EV021_BaseC02.png', :z => 0 },
      :panties => { :file => 'ev021/EV021_PantiesC02.png', :z => 1, :switch => PANTY },
      :prison => { :file => 'ev021/EV021_PrisonC02.png', :z => 2, :switch => PRISON },
      :skirt => { :file => 'ev021/EV021_SkirtC02.png', :z => 3, :switch => SKIRT },
    },
  ]

end
