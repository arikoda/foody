class Allergy < ActiveHash::Base
  self.data = [
    { id: 1, name: '乳 '},
    { id: 2, name: '卵  '},
    { id: 3, name: 'そば  '},
    { id: 4, name: '落花生  '},
    { id: 5, name: '小麦  '},
    { id: 6, name: 'えび  '},
    { id: 7, name: 'かに  '},
    { id: 8, name: '使われていない '}
  ]

end
