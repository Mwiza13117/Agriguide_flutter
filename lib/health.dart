import 'package:flutter/material.dart';

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health'),
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
        title: 'Marek\'s Disease',
        description:
            'Marek\’s Disease is a highly contagious (spreadable) viral disease of poultry, especially chickens. Marek\’s Disease is known to cause tumors which can lead to paralaysis (among other clinical signs) and death. While there is no treatment, vaccination represents an excellent example of disease control. While Marek\’s disease is typically considered a disease of young chickens (clinical signs typically appear between 6-30 weeks of age) older chickens are also susceptible. \n\nUnfortunately, the only way to diagnose Marek\’s Disease is via a necropsy by a veterinarian. That being said if you have a young bird (vaccinated or not) that has paralysis it is likely due to Marek\’s.  While there is no treatment, there are way to prevent Marek\’s Disease The two pillars of a good Marek\’s Disease prevention program are:\nFollow an effective vaccination program. Vaccines must be administered on the day the chicks hatch or in ovo (embryo inside the egg) during egg incubation in order to be most effective. While vaccination is not perfect, if given correctly the vaccine is highly effective at protecting your chickens against disease. Make sure the feedstore or hatchery you purchase your chicks from vaccinate at day of age. Alternatively, you can vaccinate your own birds at day of age. You can easily purchase vaccine at your feedstore or on-line. \n\nRemove all feather dander when introducing new chicks or birds to your coop. Because the feather follicles are known to carry the virus, removing the feather dander is a great way to reduce the amount of virus in the environment and hence reduce the overall amount of virus your chickens might be exposed to. This is typically done in your coop before moving any chicks from your brooder to the coop. Vaccinated birds or not vaccinated birds, this is very important!',
        imageUrl:
            'https://www.mannapro.com/sites/default/files/2023-02/mareks_disease.png',
      ),
      const ChickenFarmItem(
        title: 'Cocci (i.e. coccidiosis)',
        description:
            'Coccidiosis or “avian intestinal coccidiosis” is the overgrowth of any species of the protozoal gastrointestinal parasite, coccidia. These single-celled organisms can thrive in your chickens\’ guts, causing diarrhea, anemia, suboptimal growth, and even death. Though coccidiosis typically affects younger chickens due to the natural development of resistance against coccidia with age, it is possible for adults to be affected as well. \nAlso, if you have a mixed age flock, keep in mind that older birds who aren\’t showing symptoms can still be shedding coccidia eggs in their feces, infecting the younger chicks Birds become infected if they ingest coccidia eggs from their environment. These eggs are shed in the feces and can remain viable for months in the environment, including in soil, litter, and feed. \nLuckily, prevention of coccidiosis is fairly straightforward. The two pillars of coccidia prevention are: \n\nReduce the amount of coccidia in the coop environment: Big picture: Focus on preventing water spillage as the combination of water spillage and chicken feces will create the perfect environment for coccidia which can persist and flourish between your chickens and a suitable environment. Management (aka keeping the soil relatively dry) of the poultry environment (especially the soil around where birds congregate is also important in reducing coccidia loads. \nUse a medicated chick feed like Manna Pro\'s Chick Starter Grower Medicated Crumbles which reduce the number of harmful protozoa in their gastrointestinal tracts while they develop their natural resistance. If you have reservations about buying medicated chicken feed because of concerns about it containing antibiotics, remember that coccidiostats are not antibiotics and are not a concern with respect to human health. If you still have concerns you can accomplish the same results by focusing on good husbandry as described above. \n\nCoccidia can be diagnosed by your veterinarian. Though fecal samples are a quick way to diagnose coccidia, false negatives are relatively common due to the intermittent shedding of eggs in feces. Therefore, some veterinarians may suggest performing necropsies or multiple fecal samples to definitively diagnose coccidia. Once diagnosed, your veterinarian can prescribe medication to treat your flock.',
        imageUrl:
            'https://www.mannapro.com/sites/default/files/2023-02/chicken_gi_tract.png',
      ),
      const ChickenFarmItem(
        title: 'Avian Influenza (Bird Flu)',
        description:
            'Globally, Highly Pathogenic Avian Influenza (HPAI) is often considered the most significant poultry disease because of the number of domestic poultry the virus kills annually. Unfortunately right now in 2022 we are dealing with a major HPAI outbreak in North America. As there is no cure and vaccination is not currently an option it is essential for all poultry owners to focus on preventing avian influenza transmission to their flock.\nAt the most basic level, there are three types of influenza viruses: A, B and C. Influenza B and C do not infect birds but can infect humans. Influenza A can infect humans and many other animals including birds such as domestic poultry. \n\nWild aquatic birds - particularly certain wild ducks, geese, swans, gulls, shorebirds and terns - are the natural hosts for all known influenza type A viruses.  As waterfowl such as ducks and geese migrate south and back again, they have the potential to spread the disease as they interact with other animals including domestic poultry. \n\nWaterfowl are the primary reservoirs of Influenza A. Interestingly most waterfowl are not affected by the virus meaning they don\’t get sick as carriers. This means that waterfowl, such as ducks or geese, will appear healthy and continue to migrate all while shedding the virus through their droppings, respiratory secretions. \nConsequently, waterfowl are extremely effective global transmitters of the disease. The virus is shed in respiratory and fecal contents. Any contact between infected material and poultry can transmit disease. Hence there is great concern regarding human behavior and biosecurity since humans can unknowingly move virus to domestic poultry by making poor decisions related to biosecurity (e.g. the practice of preventing disease into your backyard farm and flock).\nHPAI can cause a range of symptoms that include any or all of the following: inflamed heads with bluish combs, respiratory distress, diarrhea, hemorrhages in the feet or legs, lethargy, reduced feed and water intake or sudden death. In egg-laying hens, a severe drop in egg production and/or soft or misshapen eggs may also be observed. \nHowever, it is important to keep in mind that these symptoms are not pathognomonic, meaning if you observe them in your poultry there are other diseases which also share those same clinical signs. Therefore, if your birds show any of the mentioned symptoms it does not necessarily mean they have HPAI. \n\nThe following are highly recommended biosecurity practices for chickens: \n\n1. House birds away from open water sources where waterfowl may congregate. If practical, draining ponds to reduce habitat near domestic poultry is recommended. \n2. Discourage your birds from interacting with wild birds and vice versa by confining your birds to their coop/enclosure. If not possible, consider having a rigorous cleaning routine to prevent your birds from interacting with fomites left behind by wild birds. \n3. Do not share/exchange animals, equipment or fed with fellow bird owners. At times, restricting access to your birds altogether may be necessary. \n4. Quarantine new flock additions for 30 days and look for signs of disease before allowing the new birds to join the established flock. \n5. Frequently monitor your birds and isolate suspect birds right away to prevent the disease from spreading. \n6. If contact with waterfowl is made, thorough cleaning and disinfection of clothing, shoes and even vehicles used during contact with waterfowl is crucial for preventing the spread of disease onto your farm. If you hunt waterfowl, this is a must follow practice. \n7. Work with your veterinarian, state/federal veterinarian, local university, farm advisor etc. Many of these resources are free!',
        imageUrl:
            'https://www.cdc.gov/flu/images/avianflu/h7n9-reassortment-diagram-sm.jpg?_=41573',
      ),
      const ChickenFarmItem(
        title: 'virulent Newcastle Disease (vND)',
        description:
            'Along with Avian Influenza, vND is considered to be one of the most significant diseases of poultry in the world. While milder strains of vND are somewhat common in North America, the virulent strains (aka vND) are not. However, they do appear periodically and cause significant problems to domestic backyard and commercial poultry. \nBecause there is no treatment and the disease is highly infectious understanding how the virus spreads is essential to controlling the impact it causes. Specifically, vND can be spread from excretions from infected birds, aerosols and feces. Consequently, the virus can be associated with contaminated feed, water, footwear, clothing, tools, equipment and the environment. \nExposure of susceptible birds to any of these virus sources can result in transmission via inhalation or ingestion. Therefore, it is essential to prevent the virus from spreading to your flock. The best tool we have for that type of control is biosecurity which means practice good husbandry in order to prevent infectious diseases from infecting your flock. \nIn addition to focusing on biosecurity and management, vaccination should be considered for backyard flocks especially flocks that are in close proximity to affected flocks. However, vaccines are not a "bandaid" for poor management. \nVaccinations such as the LaSota and the B1 vaccine are available at many feedstores for Newcastle Disease. For the LaSota vaccine your chickens may have respiratory signs after the vaccination (this can be a normal part of the vaccine response). The pros of this vaccine typically include a decrease in clinical signs, virus shedding, and spreading this disease. The cons involve the possibility of the virus continuing to spread and be maintained in some vaccinated flocks. This is because the vaccine protects against disease but doesn\’t prevent your chickens from getting infected with vND.',
        imageUrl:
            'https://d1lg8auwtggj9x.cloudfront.net/images/newcastledisease.width-820.jpg',
      ),
      const ChickenFarmItem(
        title: 'Salmonella',
        description:
            'Salmonella is a species of bacteria that lives in the gut of many animals and can cause GI problems.  Food poisoning from Salmonella can be associated with all kinds of different foods. However, poultry is the most commonly linked food associated with Salmonella. \nIt is important to understand that some types of Salmonella make you sick and some types don\’t. In addition, some types of Salmonella make chickens sick and some don\’t… Unfortunately, the ones that make chickens sick don\’t often make humans sick and the ones that make us humans sick often don\’t make chickens sick. This makes food safety difficult b/c if the Salmonella that made us sick also made chickens sick we could easily remove the sick chickens from the food supply but it doesn\’t typically work that way… \nSo although you are never taught to assume things, in this situation it is probably best from a food safety perspective to assume your chickens are carriers of Salmonella (aka the kind that makes you sick but doesn\’t make your chickens sick). This is particularly important if you have children or immunocompromised folks in your household. \nHow can you determine whether or not your chickens have Salmonella? \n\nOption 1: send a drag swab (sterile swab) of your poultry environment (see link below) to your friendly diagnostic lab to test out what Salmonella are present… \nOption 2: your second choice is when a bird in your flock inevitably dies you can submit the bird to a diagnostic lab for a chicken autopsy where they can test for Salmonella. \nBig picture, if the tests come back negative or positive it\’s best to assume  that your chickens have Salmonella and other bacteria that can cause human illness. Regardless of what information you seek and regardless of the results cook all poultry eggs and meat to 165 degrees Fahrenheit. \nIn summary, error on the side of caution. Assume your chickens are carriers. Don\’t be that guy or girl on the internet that kisses your chicken or that uses the same apron when cooking and when holding their chickens!!!! Not a good thing…',
        imageUrl:
            'https://www.raising-happy-chickens.com/images/salmonella-01.jpg',
      ),
      const ChickenFarmItem(
        title: 'Mycoplasma',
        description:
            'Mycoplasma is a very challenging disease for backyard poultry owners and people who have breeding flocks because the only way to eliminate it with 100% certainty is via 1. culling or 2. testing and culling of breeding hens. Many responsible poultry owners get a diagnosis and then are confused on what they “should do.”  This is in part due to the reality that Mycoplasma is considered somewhat ubiquitous in backyard flocks. \nHence, if you test your birds and they come back positive can you assume that all backyard poultry are already positive and therefore you are “OK going to a poultry show or selling your birds?” From my perspective, although you went the extra mile testing, you still have one more step which is to not take sick birds to shows and to communicate your results with others who may be potentially affected. \nIn general, infections from Mycoplasma cause significant acute and chronic respiratory disease (i.e. coughing, sneezing, sinus infections, ocular and nasal discharge) and “secondary” problems including swollen and infected joints in the hock and foot pad, skeletal deformities, weakness, poor laying and embryo mortalities. \nWhile the clinical signs listed above are often seen in Mycoplasma positive poultry you can\’t assume that if you see those signs that your birds have a Mycoplasma infection.  This is because other infectious diseases have similar clinical signs in poultry include Infectious coryza, fowl cholera, Newcastle Disease, and Infectious Bronchitis. \nIn fact, the only way to know for sure what disease your birds may or may not have is via diagnostic testing. Diagnostic testing for Mycoplasma can be done while the birds are alive (i.e. ante-mortem testing) or once they are dead (i.e. post-mortem testing). \nWhile infected birds can be treated with antibiotics by injection and/or in the feed, the treatment is not considered reliable in completely eliminating Mycoplasma but can be a potential option for an owner who does not want to cull infected carriers or flocks. \nIn addition, because the bacteria can be transmitted from the hen to the chick, if you have sick chicks you need to also test the breeding flock to confirm they are not infectious. In summary while Mycoplasma doesn\’t kill a lot of birds, it is highly infectious and very common in backyard birds. Good biosecurity is a must if you hope to prevent it from affecting your flock.',
        imageUrl:
            'https://www.mannapro.com/sites/default/files/2023-02/sinusitis_in_turkeys.png',
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
