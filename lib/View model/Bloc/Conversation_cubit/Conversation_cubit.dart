import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/View%20model/Bloc/Conversation_cubit/Coversation_states.dart';

class ConversationCubit extends Cubit<ConversationState>{
  ConversationCubit(): super (ConversationIniState()) ;

 static ConversationCubit get(context) => BlocProvider.of<ConversationCubit>(context);


 List<us>



}