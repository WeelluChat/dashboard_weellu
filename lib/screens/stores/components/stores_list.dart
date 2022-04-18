import 'package:dashboard/config/constants.dart';
import 'package:flutter/material.dart';

class StoresList extends StatelessWidget {
  const StoresList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 300,
                  child: const TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.only(top: 10, left: 10),
                      hintText: 'Search Stores',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 40, top: 10, bottom: 10, left: 15),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      color: Colors.grey,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      tooltip: 'Add Store',
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'S. nº',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text('Profile',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 40,
                      ),
                      Text('Name',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 35, left: 205),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('       Users',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('  Country',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Report Count ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Actions',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 40, right: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.1),
                          border: Border.all(
                            color: Colors.white,
                            width: .1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${index}'),
                                SizedBox(
                                  width: 34,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                ),
                                SizedBox(
                                  width: 37,
                                ),
                                Text('Name'),
                              ],
                            ),
                            Text('${index}'),
                            Text('Country'),
                            Text('${index}'),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: bgColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove_red_eye,
                                      color: bgColor,
                                    ),
                                    tooltip: 'View',
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: (index >= 0) && (index < 3)
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      (index >= 0) && (index < 3)
                                          ? Icons.lock_open
                                          : Icons.lock,
                                    ),
                                    color: (index >= 0) && (index < 3)
                                        ? Colors.green
                                        : Colors.red,
                                    tooltip: (index >= 0) && (index < 3)
                                        ? 'Block'
                                        : 'Unlock',
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_forever),
                                    color: Colors.red,
                                    tooltip: 'Delete',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
