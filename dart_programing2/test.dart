void main() {

  /// 분기문
  /*
  bool isTrue = true;
  String text = 'Hello';
  int standard = 3;
  int num = 5;

  if(isTrue){
    print('True');
  }

  if(text == 'Hello'){
    print(text);
  }

  if(standard < 0){
    print('여기는 안 찍힘');
  } else if (standard == 3){
    print('여기는 찍힘');
  } else{
    print('모두 거짓이었네요.');
  }

  // 다트 구버전은 break 또는 retrun 있어야함, 범위 지정도 가능함
  switch(num){
    case 1:
      print('Switch $num');
      break;
    case 2:
      print('Switch $num');
      break;
    case 3:
      print('Switch $num');
      break;
    case 4:
      print('Switch $num');
      break;
    case 5:
      print('Switch $num');
      break;
    default:
      print('Not 1 ~ 5');
  }
  */

  /// 반복문
  /*
  List<int> indexs = [0,1, 2, 3, 4, 5];
  bool isRunning = true;
  int count = 0;
  for(int i = 0; i < 10; i++){
    print(i);
  }
  for(final index in indexs){
    print('running $index');
  }
  while(isRunning){
    if(count >= 5){
      isRunning = false;
    }
    count++;
    print('While is running $count');
  }
  */

  /// 예외처리
  /*
  /// try - catch 문 : 가장 기본적인 예외처리
  try {
    // 예외가 발생할 것으로 예상되는 코드
    print(10 ~/ 0);
  }catch(error , stack){
    // 예외가 발생했을 때 실행 하고자 하는 코드
    print(error);
    print(stack);
  } finally{
    // 예외가 발생 했던, 하지 않았던, try 문 / catch 문 이후에 실행하고자 하는 코드
    print('예외처리 문을 지나쳤다.');
  }

  print('예외처리를 해서 이것도 실행됨');

  try{
    print(10 ~/0 );
  } on UnsupportedError catch(e, s){
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s){
    print('Null 값이 참조 되었습니다.');
  } catch (e, s){
    print('모르는 에러가 발생');
  }

  try{
    throw Exception('Unknown Error');
  } on UnsupportedError catch(e, s){
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s){
    print('Null 값이 참조 되었습니다.');
  } catch (e, s){
    //print('모르는 에러가 발생');
    rethrow; // 에러를 밖으로 던짐
  }
  */

  /// 비동기 프로그래밍
  /*
  futureTodo(3);
  futureTodo(1);
  futureTodo(5);

  streamTodo().listen((event) { });
  streamTodo().listen((event) { });
  */

}

/// async* / yield / Stream  : 지속적으로 응답을 돌려받는 경우
Stream<int> streamTodo() async* {
  int counter = 0;

  while(counter <= 10){
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print('TODO is Running $counter');
    yield counter;
  }

  print('TODO is Done');
}

/// async / await / Future : 1회만 응답을 돌려받는 경우

Future<void> futureTodo(int second) async{
  await Future.delayed(Duration(seconds: second));
  print('TODO Done in $second seconds');
}

// 함수, 메서드
int add(int num1, int num2){
  return num1 + num2;
}
