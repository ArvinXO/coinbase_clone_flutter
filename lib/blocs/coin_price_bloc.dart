import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'coin_price_event.dart';
part 'coin_price_state.dart';

//Responsible for receiving event updates and triggering state change
//Register an event handler for each event we define, for each handler, event and emit parameters are provided
// OnFunction registers an event handler for an event of type E, provides callback with the event(state) and emit function used to emit new states.
// Expect 2 events: 'Start' and 'UpdateCoinPrice' - When they occur, trigger the associated handlers/functions
// 2 Methods: Start and UpdatePrice which updates state by calling emit on copyWith
class CoinPriceBloc extends Bloc<CoinPriceEvent, CoinPriceState> {
  CoinPriceBloc() : super(CoinPriceState.start(5.0)) {
    on<Start>((event, emit) => _start(emit, event.coinPrice));
    on<UpdateCoinPrice>((event, emit) => _updatePrice(emit, event.coinPrice));
  }
  Future<CoinPriceState> _start(
      Emitter<CoinPriceState> emit, double coinPrice) async {
    emit(state.copyWith(coinPrice: coinPrice));
    return state;
  }

  Future<CoinPriceState> _updatePrice(
      Emitter<CoinPriceState> emit, double coinPrice) async {
    emit(state.copyWith(coinPrice: coinPrice));
    return state;
  }
}
