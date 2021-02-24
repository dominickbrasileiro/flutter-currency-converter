class CurrencyModel {
  final String name;
  final double brazilianReal;
  final double unitedStatesDollar;
  final double euro;
  final double bitcoin;

  CurrencyModel({
    this.name,
    this.brazilianReal,
    this.unitedStatesDollar,
    this.euro,
    this.bitcoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Brazilian Real',
        brazilianReal: 1.0,
        unitedStatesDollar: 0.18,
        euro: 0.15,
        bitcoin: 0.0000037,
      ),
      CurrencyModel(
        name: 'United States Dollar',
        brazilianReal: 5.43,
        unitedStatesDollar: 1.0,
        euro: 0.82,
        bitcoin: 0.000020,
      ),
      CurrencyModel(
        name: 'Euro',
        brazilianReal: 6.6,
        unitedStatesDollar: 1.21,
        euro: 1.0,
        bitcoin: 0.000025,
      ),
      CurrencyModel(
        name: 'Bitcoin',
        brazilianReal: 268361.31,
        unitedStatesDollar: 49396.50,
        euro: 40670.62,
        bitcoin: 1.0,
      ),
    ];
  }
}
