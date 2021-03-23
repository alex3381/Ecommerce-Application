class Destination {
  String imageUrl;
  String name;
  String type;
  String description;

  Destination({
    this.imageUrl,
    this.name,
    this.type,
    this.description,
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/front_interfce_header.gif',
    name: 'Collections',
    type: 'Salvatore',
    description: 'Several Salvatore collections everything you need.',
    // activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/xavier.jpg',
    name: 'Xavier',
    type: 'Italian Collection',
    description:
        'A very unique style of shoe specially made from crocodile skin',
    // activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/clothes.jpg',
    name: 'laurent',
    type: 'Franch Collection',
    description: 'Visit our our Mall, and choose from different styles.',
    // activities: activities,
  ),
  Destination(
      imageUrl: 'assets/images/coffee2.jpg',
      name: 'Coffee',
      type: 'Dubai style',
      description: 'Visit our coffee shop, there is enough to go round'
      // activities: activities,
      ),
  Destination(
    imageUrl: 'assets/images/christmas.jpg',
    name: 'Christmas ',
    type: 'Discouts Available',
    description: 'make this christmas a memorable experience.',
    // activities: activities,
  ),
];
