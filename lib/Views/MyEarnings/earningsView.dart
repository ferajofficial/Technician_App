import '../../Helpers/import.dart';

class EarningsView extends StatefulWidget {
  const EarningsView({Key? key}) : super(key: key);

  @override
  State<EarningsView> createState() => EarningsViewState();
}

class EarningsViewState extends State<EarningsView> {
  String selectedPreference = 'Daily';

  @override
  Widget build(BuildContext context) {
    List<Earnings> earnings = [];

    if (selectedPreference == 'Daily') {
      earnings = [
        Earnings('Day before\nyesterday', 1500),
        Earnings('Yesterday', 2000),
        Earnings('Today', 1000),
      ];
    } else if (selectedPreference == 'Weekly') {
      earnings = [
        Earnings('Second\nLast Week', 5000),
        Earnings('Last Week', 6000),
        Earnings('This Week', 8000),
      ];
    } else if (selectedPreference == 'Monthly') {
      earnings = [
        Earnings('January', 8000),
        Earnings('February', 6000),
        Earnings('March', 5000),
      ];
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            const Text(
              'My Earnings',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              alignment: Alignment.centerLeft,
              child: DropdownButton<String>(
                value: selectedPreference,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Daily',
                    child: Text('Daily'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Weekly',
                    child: Text('Weekly'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Monthly',
                    child: Text('Monthly'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedPreference = value!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      majorGridLines: const MajorGridLines(width: 0),
                      minorGridLines: const MinorGridLines(width: 0)),
                  primaryYAxis: NumericAxis(
                      majorGridLines: const MajorGridLines(width: 0),
                      minorGridLines: const MinorGridLines(width: 0)),
                  series: <ChartSeries<Earnings, String>>[
                    ColumnSeries<Earnings, String>(
                      dataSource: earnings,
                      xValueMapper: (Earnings data, _) => data.month,
                      yValueMapper: (Earnings data, _) => data.amount,
                      color: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, bottom: 15),
              child: Text(
                '''Today's Total Earnings''',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const Text.rich(
              TextSpan(
                text: 'Rs.',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '4,782',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Earnings {
  Earnings(this.month, this.amount);
  final String month;
  final double amount;
}
