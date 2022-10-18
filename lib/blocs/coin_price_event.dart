part of 'coin_price_bloc.dart';

abstract class CoinPriceEvent extends Equatable {
  const CoinPriceEvent();

  @override
  List<Object> get props => [];
}

class Start extends CoinPriceEvent {
  final double coinPrice;
  //Start bloc class
  const Start(this.coinPrice);
}

class UpdateCoinPrice extends CoinPriceEvent {
  final double coinPrice;
  //Triggers event on the chart to update with new price when tapped
  const UpdateCoinPrice(this.coinPrice);
}
