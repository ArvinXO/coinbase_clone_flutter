part of 'coin_price_bloc.dart';

//Responsible for holding the value of coinPrice - Initialize value using factory constructor and update state using copyWith
class CoinPriceState extends Equatable {
  final double coinPrice;
  const CoinPriceState({required this.coinPrice});

  @override
  List<Object> get props => [coinPrice];

  factory CoinPriceState.start(double coinPrice) {
    return CoinPriceState(
      coinPrice: coinPrice,
    );
  }

  CoinPriceState copyWith({
    double? coinPrice,
  }) {
    return CoinPriceState(
      coinPrice: coinPrice ?? this.coinPrice,
    );
  }
}
