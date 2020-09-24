class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択なし'},
    { id: 2, name: '穀物'},
    { id: 3, name: '野菜'},
    { id: 4, name: '冷凍食品' },
    { id: 5, name: '飲み物'},
    { id: 6, name: '乾物'},
    { id: 7, name: '缶詰'},
    { id: 8, name: 'レトルト食品'},
    { id: 9, name: 'お菓子'},
    { id: 10, name: 'その他'},
  ]


end
