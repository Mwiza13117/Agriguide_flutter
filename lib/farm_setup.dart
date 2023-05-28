import 'package:flutter/material.dart';

class FarmSetup extends StatelessWidget {
  const FarmSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chicken Farm Setup'),
      ),
      body: const ChickenFarmHomePage(),
    );
  }
}

class ChickenFarmHomePage extends StatefulWidget {
  const ChickenFarmHomePage({Key? key}) : super(key: key);

  @override
  _ChickenFarmHomePageState createState() => _ChickenFarmHomePageState();
}

class _ChickenFarmHomePageState extends State<ChickenFarmHomePage> {
  Future<List<ChickenFarmItem>> _fetchChickenFarmItems() async {
    // Simulating fetching data from the internet
    await Future.delayed(const Duration(seconds: 2));

    // Sample data (replace with your actual data fetching logic)
    return [
      const ChickenFarmItem(
        title: 'Decide if you are going to do coop farming or pastured farming',
        description:
            'There are two options when it comes to chicken farming: farming your chickens in a coop or farming your chickens in a pasture. \nWhen you set up a coop chicken farm, you will need to have coops, buildings, and large equipment to take care of the chickens. Pastured farming only requires a small acreage of land and an enclosure so the birds are protected from predators. The benefits of pastured farming are that there is very little overhead or start up costs and it can be done with fifty chickens or hundreds of chickens. \nMany of the other elements of chicken farming, like selecting chickens and caring for the chickens, are the same for both coop farming and pastured farming. The major difference in pastured farming is that rather than build a coop for the chickens, you will need small enclosed shelters on a pasture. The chicks, feed, and water will then be moved everyday in movable pens. \nYou can also set up a pastured farm using a shelter that has a door that allows the chicks to move in and out of the shelter at will. You will then surround the shelter with electric fencing and move the fencing on occasion so the chicks are given access to new areas to pasture.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/9/91/Start-a-Chicken-Farm-Step-6-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-6-Version-2.jpg.webp',
      ),
      const ChickenFarmItem(
        title: 'Build a coop big enough to house forty to sixty chickens.',
        description:
            'The most important element of your chicken farm is the chicken coop, which should be big enough to fit forty to sixty chickens at a time. Chickens are social animals and do well in groups. The coop should be big enough to provide four square feet of space per chicken. For example, an 8 x 8 chicken coop can hold 16 chickens. \nThe coop should also be large enough for you to stand in so you can gather eggs and shovel manure. But do not make it too big, as the chickens can get cold in a space that is too large. \nMost chicken coops are built out of wood, with wood roofs and chicken wire windows and a chicken wire door. The windows or screens are important as they will allow sunlight into the coop in the wintertime and provide ventilation in the summertime. You can buy the raw materials and build it yourself using a chicken coop plan.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/0/00/Start-a-Chicken-Farm-Step-5-Version-4.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-5-Version-4.jpg.webp',
      ),
      const ChickenFarmItem(
        title: 'Include a large roosting area and nesting boxes.',
        description:
            'Your coop must include a roost for your chickens, about 6-12 inches of roosting space allotted for each bird. You can build the roost inside the coop using a board or dowel that is 1 ½ inches in diameter, making sure the roost is 2 ½ - 3 feet off the coop floor. \nThe coop should also have a nesting box for the chickens, 13 inches all around, one box per four to five birds. The nesting boxes will keep the eggs laid off the coop floor and away from the manure.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/a/a5/Start-a-Chicken-Farm-Step-7-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-7-Version-2.jpg.webp',
      ),
      const ChickenFarmItem(
        title: 'Add a feeder and water containers. ',
        description:
            'Finally, make sure the coop has a feeder that is big enough for the chickens to eat from and several water containers that are shallow so the chickens cannot fall into them. You should have one long feeder per four to six birds and one water container per four to six birds.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/a/a1/Start-a-Chicken-Farm-Step-8-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-8-Version-2.jpg.webp',
      ),
      const ChickenFarmItem(
        title:
            'Fence in a 20 x 5 foot outdoor area near the coop with chicken wire and a chicken fence.',
        description:
            'Your chickens will need an outdoor area to walk and cluck around in so they can spread their wings and take dust baths throughout the day. A chicken run will help your chickens stay healthy and ensure they produce high quality eggs. You should fence the area with chicken wire or put up a chicken fence so the chickens stay in and are not threatened by predators, including any household cats or dogs. \nTry to have the outdoor area close or next to the chicken coop for easy access and convenience. The chickens will spend a lot of time in the outdoor area and in the coop so they should be close to each other. \nYou should fortify the chicken wire with fencing using T-posts to keep predators out and line the base of the enclosures to ensure no small animals like weasels, minks or snakes from getting into the enclosure.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/1/13/Start-a-Chicken-Farm-Step-9-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-9-Version-2.jpg.webp',
      ),
      const ChickenFarmItem(
        title: 'Buy an incubator if you plan to breed your own chickens.',
        description:
            ' If you plan to breed your own chickens, you should get one to two incubators to help keep your new chicks warm and well cared for. \nKeep in mind incubators can be expensive and often take up lots of space. You can find incubators at your local farm equipment store or online through second hand websites.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/3/30/Start-a-Chicken-Farm-Step-10-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-10-Version-2.jpg.webp',
      ),
      const ChickenFarmItem(
        title:
            'Get stainless steel killing cones and a feather plucker to process your meat chickens. ',
        description:
            'You should be prepared to process any chickens raised for meat by investing in stainless steel killing cones and a feather plucker. This will make the processing time for each chicken fast and efficient. \nIf you do not want to invest in this type of equipment, you can use a hatchet and a scalding pot instead to kill and process your chickens. However, larger meat chicken farms often have more sophisticated equipment to keep production easy and fast.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/2/28/Start-a-Chicken-Farm-Step-11-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-11-Version-2.jpg.webp',
      ),
      const ChickenFarmItem(
        title: 'Invest in egg washing equipment for egg laying chickens.',
        description:
            'In order to sell chicken eggs commercially, you will need to have egg-washing equipment to clean the eggs properly. You will also need to have a professionally calibrated scale so you can size your eggs properly and a high intensity candler to grade your eggs. \nYou should also invest in egg cartons and egg labeling. Your labeling should advertise that your eggs are all natural, locally produced, and pesticide and chemical free as this will attract more customers to your eggs.',
        imageUrl:
            'https://www.wikihow.com/images/thumb/7/75/Start-a-Chicken-Farm-Step-12-Version-2.jpg/aid661521-v4-728px-Start-a-Chicken-Farm-Step-12-Version-2.jpg.webp',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChickenFarmItem>>(
      future: _fetchChickenFarmItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (snapshot.hasData) {
          final items = snapshot.data!;
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                leading: Image.network(
                  item.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(item.title),
                subtitle: Text(item.description),
              );
            },
          );
        } else {
          return const Center(
            child: Text('No data found.'),
          );
        }
      },
    );
  }
}

class ChickenFarmItem {
  final String title;
  final String description;
  final String imageUrl;

  const ChickenFarmItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
