class RecommendedModel {
  dynamic name;
  dynamic tagLine;
  dynamic image;
  dynamic images;
  dynamic description;
  dynamic price;

  RecommendedModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['tagLine'],
        item['image'], item['images'], item['description'], item['price']))
    .toList();

var recommendationsData = [
  {
    "name": "Семаранг, Индонезия",
    "tagLine": "Семаранг Разнообразие культур",
    "image":
        "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
    "images": [
      "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
      "https://images.unsplash.com/photo-1577791465485-b80039b4d69a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
      "https://images.unsplash.com/photo-1577404699057-04440b45986f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80",
      "https://images.unsplash.com/photo-1549973890-38d08b229439?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=642&q=80",
      "https://images.unsplash.com/photo-1622263096760-5c79f72884af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"
    ],
    "description":
        "Семаранг - столица провинции Центральная Ява, Индонезия, а также пятый по величине мегаполис Индонезии.",
    "price": 100
  },
  {
    "name": "Раджа Ампат, Индонезия",
    "tagLine": "Укромное местечко Раджа Ампат",
    "image":
        "https://images.pexels.com/photos/2583852/pexels-photo-2583852.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "images": [
      "https://images.pexels.com/photos/2583852/pexels-photo-2583852.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
      "https://images.unsplash.com/photo-1570789210967-2cac24afeb00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1516690561799-46d8f74f9abf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "https://live.staticflickr.com/1449/23852180634_54f8aa0404_b.jpg",
      "https://cdn.pixabay.com/photo/2017/08/09/12/05/piaynemo-2614341_960_720.jpg"
    ],
    "description":
        "Раджа Ампат - одно из любимых туристических направлений, вы можете почувствовать культурный туризм и историю, чтобы исследовать экзотические пляжи в Раджа Ампате.",
    "price": 130
  },
  {
    "name": "Бали, Индонезия",
    "tagLine": "Прекрасное небо Бали",
    "image":
        "https://images.unsplash.com/photo-1539367628448-4bc5c9d171c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
    "images": [
      "https://images.unsplash.com/photo-1539367628448-4bc5c9d171c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
      "https://images.unsplash.com/photo-1542897644-e04428948020?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80",
      "https://images.unsplash.com/photo-1546845776-dcdf70fd09e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1517480448885-d5c53555ba8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1034&q=80",
      "https://images.unsplash.com/photo-1524675053444-52c3ca294ad2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    ],
    "description":
        "Бали, знаменитый остров богов, с его разнообразным ландшафтом холмов и гор, изрезанными береговыми линиями и песчаными пляжами, пышными рисовыми террасами и бесплодными вулканическими склонами холмов - все это создает живописный фон для его красочной, глубоко духовной и уникальной культуры, и все это требует серьезного внимания. быть раем на земле.",
    "price": 120
  },
  {
    "name": "Джокьякарта, Индонезия",
    "tagLine": "Незабываемая Джокьякарта",
    "image":
        "https://images.unsplash.com/photo-1584810359583-96fc3448beaa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
    "images": [
      "https://images.unsplash.com/photo-1584810359583-96fc3448beaa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
      "https://images.unsplash.com/photo-1551018612-9715965c6742?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1354&q=80",
      "https://images.unsplash.com/photo-1561100344-0cce8621ca6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1529680218503-29abd728bef5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=679&q=80",
      "https://images.unsplash.com/photo-1566559532512-004a6df74db5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"
    ],
    "description":
        "Джокьякарта - шумный город с населением около полумиллиона человек и самое популярное туристическое направление на Яве, во многом благодаря своей близости к храмам Боробудур и Прамбанан.",
    "price": 110
  },
  {
    "name": "Вианг Кум Кам, Таиланд",
    "tagLine": "Удивительный Таиланд",
    "image":
        "https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    "images": [
      "https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1519451241324-20b4ea2c4220?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1323&q=80",
      "https://images.unsplash.com/photo-1552550018-5253c1b171e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1562602833-0f4ab2fc46e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80"
    ],
    "description":
        "Таиланд - страна Юго-Восточной Азии. Он известен тропическими пляжами, роскошными королевскими дворцами, древними руинами и богато украшенными храмами с фигурами Будды.",
    "price": 180
  },
  {
    "name": "Сады у Залива, Сингапур",
    "tagLine": "Совет по туризму Сингапура",
    "image":
        "https://images.unsplash.com/photo-1506351421178-63b52a2d2562?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
    "images": [
      "https://images.unsplash.com/photo-1506351421178-63b52a2d2562?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
      "https://images.unsplash.com/photo-1516496636080-14fb876e029d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1525625293386-3f8f99389edd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1249&q=80",
      "https://images.unsplash.com/photo-1555912881-1ecd82307e0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
      "https://images.unsplash.com/photo-1499359875449-10bbeb21501e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
    ],
    "description":
        "Сингапур - это больше, чем просто туристические достопримечательности. Он постоянно развивается, изобретает и переосмысливает себя вместе с людьми, которые увлечены созданием новых возможностей.",
    "price": 200
  },
];
