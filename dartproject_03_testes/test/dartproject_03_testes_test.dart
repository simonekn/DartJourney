import 'package:dartproject_03_testes/classes/viacep.dart';
import 'package:dartproject_03_testes/dartproject_03_testes.dart' as project;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'dartproject_03_testes_test.mocks.dart';

@GenerateMocks([MockViaCEP])
void main() {
  group('calculate the price with discount', () {
    var valuesToTest = {
      {'price': 1000, 'discount': 150, 'percent': false}: 850,
      {'price': 1000, 'discount': 15, 'percent': true}: 850,
    };
    valuesToTest.forEach((values, expected) {
      test('Entries: $values: Expected: $expected', () {
        expect(
            project.discountCalculator(
                double.parse(values["price"].toString()),
                double.parse(values["discount"].toString()),
                values["percent"] == true),
            equals(expected));
      });
    });
  });

  group("Calculate the price and informing the zero value: ", () {
    var valuesToTest = {
      {'price': 0, 'discount': 150, 'percent': false},
      {'price': 1000, 'discount': 0, 'percent': true},
    };
    for (var values in valuesToTest) {
      test('Entries: $values: ', () {
        expect(
            () => project.discountCalculator(
                double.parse(values["price"].toString()),
                double.parse(values["discount"].toString()),
                values["percent"] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });

  test('Test converton to Uppercase', () {
    expect(project.convertToUpperr('dio'), equals("DIO"));
  });

  test('Return CEP', () async {
    MockMockViaCEP mockMockViaCEP = MockMockViaCEP();
    when (mockMockViaCEP.retornoCEP("01001000"))
      .thenAnswer((realInvocation) => Future.value({
        "cep": "01001-000", 
        "logradouro": "Praça da Sé", 
        "complemento": "lado ímpar", 
        "bairro": "Sé", 
        "localidade": "São Paulo", 
        "uf": "SP", 
        "ibge": "3550308", 
        "gia": "1004", 
        "ddd": "11", 
        "siafi": "7107"
      }));
    var body = await mockMockViaCEP.retornoCEP("01001000");
    expect(body["bairro"], equals("Sé"));
    expect(body["logradouro"], equals("Praça da Sé"));
  });
}

class MockViaCEP extends Mock implements ViaCEP {}