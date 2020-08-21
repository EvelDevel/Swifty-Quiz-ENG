
//  Created by Евгений Никитин on 15.04.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

// MARK:  02 - Вопросы (id) с 101 по 200

class BasicOperatorsSet {
    static func getQuestions() -> [Question] {
        return [
            Question(question: ["Минимальная автономная единица, выполняющая команду",
                                "Автономная единица, выполняющая команду",
                                "Эта минимальная автономная единица способна выполнить команду"],
                     image: "",
                     optionA: "Оператор",
                     optionB: "Операнд",
                     optionC: "Переменная",
                     optionD: "Функция",
                     questionId: 101,
                     helpText: "Оператор — минимальная автономная единица, выполняющая команду. Операторы могут быть простыми (унарными, бинарными) и структурными (тернарными)."),
            
            Question(question: ["Значение, которое операторы затрагивают в своей работе",
                                "Операторы выполняют команды с этим значением",
                                "В своей работе операторы затрагивают именно это"],
                     image: "",
                     optionA: "Операнд",
                     optionB: "Оператор",
                     optionC: "Значение",
                     optionD: "",
                     questionId: 102,
                     helpText: "Величины, к которым применяются операторы, называются операндами. В выражении “1 + 2” символ “+” является бинарным оператором, а его операндами служат 1 и 2."),
            
            Question(question: ["Операторы, которые применяются к одной величине",
                                "Эти операторы применяются к одной величине",
                                "Именно эти операторы можно применять только к одной величине"],
                     image: "",
                     optionA: "Унарные",
                     optionB: "Бинарные",
                     optionC: "Тернарные",
                     optionD: "",
                     questionId: 103,
                     helpText: "Унарные операторы применяются к одной величине (например, -a). Унарные префиксные операторы ставятся непосредственно перед величиной (например, !b), а унарные постфиксные операторы — сразу за ней (например, c!)."),
            
            Question(question: ["Унарные операторы, которые ставятся непосредственно перед величиной",
                                "Эти унарные операторы ставятся перед величиной",
                                "Непосредственно перед величиной ставятся именно эти унарные операторы"],
                     image: "",
                     optionA: "Префиксные",
                     optionB: "Постфиксные",
                     optionC: "Инфиксные",
                     optionD: "",
                     questionId: 104,
                     helpText: "Унарные префиксные операторы ставятся непосредственно перед величиной (например, !b)."),
            
            Question(question: ["Унарные операторы, которые ставятся сразу за величиной",
                                "Эти унарные операторы ставятся за величиной",
                                "Сразу за величиной ставятся именно эти унарные операторы"],
                     image: "",
                     optionA: "Постфиксные",
                     optionB: "Инфиксные",
                     optionC: "Префиксные",
                     optionD: "",
                     questionId: 105,
                     helpText: "Унарные постфиксные операторы ставятся сразу за величиной (например, c!)."),
            
            Question(question: ["Операторы, которые применяются к двум величинам",
                                "Эти операторы применяются к двум величинам",
                                "Как называются операторы, которые применяются к двум величинам?"],
                     image: "",
                     optionA: "Бинарные",
                     optionB: "Тернарные",
                     optionC: "Унарные",
                     optionD: "",
                     questionId: 106,
                     helpText: "Бинарные операторы применяются к двум величинам (например, 2 + 3) и являются инфиксными, так как ставятся между этими величинами."),
            
            Question(question: ["Операторы, применяемые к трем величинам",
                                "К трем величинам применяются эти операторы",
                                "Как называются операторы, применяемые к трем величинам?"],
                     image: "",
                     optionA: "Тернарные",
                     optionB: "Бинарные",
                     optionC: "Унарные",
                     optionD: "",
                     questionId: 107,
                     helpText: "Тернарные операторы применяются к трем величинам. Как и в языке C, в Swift есть только один такой оператор, а именно — тернарный условный оператор (a ? b : c)."),
            
            Question(question: ["Какой из этих операторов называется оператором присваивания?",
                                "Как пишется оператор присваивания?",
                                "Выберите среди вариантов оператор присваивания"],
                     image: "",
                     optionA: "=",
                     optionB: "==",
                     optionC: "!=",
                     optionD: "===",
                     questionId: 108,
                     helpText: "Оператор присваивания (a = b) инициализирует или изменяет значение переменной a на значение b."),
            
            Question(question: ["Какой оператор инициализирует или изменяет значение переменной?",
                                "Этот оператор инициализирует или изменяет значение переменной a на значение b",
                                "Какой оператор присваивает значение переменной a значению переменной b?"],
                     image: "",
                     optionA: "=",
                     optionB: "==",
                     optionC: "!=",
                     optionD: "===",
                     questionId: 109,
                     helpText: "Оператор присваивания (a = b) инициализирует или изменяет значение переменной a на значение b. Если левая часть выражения является кортежем с несколькими значениями, его элементам можно присвоить сразу несколько констант или переменных."),
            
            Question(question: ["Если левая часть выражения является кортежем с несколькими значениями, можем ли мы присвоить сразу несколько констант или переменных его значениям?",
                                "Левая часть выражения, это кортеж, можем ли мы присвоить несколько констант или переменных всем его значениям",
                                "Можем ли мы сразу присвоить несколько констант или переменных значениям кортежа?"],
                     image: "",
                     optionA: "Можем, через запятую: (x, y) = (1, 2)",
                     optionB: "Можем, через точку с запятой",
                     optionC: "Нет, не можем",
                     optionD: "Можем, через слеш: (x, y) = 1 / 2",
                     questionId: 110,
                     helpText: "Если левая часть выражения является кортежем с несколькими значениями, его элементам можно присвоить сразу несколько констант или переменных. let (x, y) = (1, 2), где x равно 1, а y равно 2."),
            
            Question(question: ["Может ли оператор присваивания в Swift возвращать значение?",
                                "Оператор присваивания может возвращать значение?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "Только Bool",
                     optionD: "Только Int",
                     questionId: 111,
                     helpText: "В отличие от C и Objective-C оператор присваивания в Swift не может возвращать значение. Эта особенность не позволяет разработчику спутать оператор присваивания (=) с оператором проверки на равенство (==). Благодаря тому, что выражения типа if x = y некорректны, подобные ошибки при программировании на Swift не произойдут."),
            
            Question(question: ["Сколько стандартных арифметических операторов поддерживает Swift?",
                                "Количество арифметических операторов, поддерживаемых в Swift?",
                                "Swift поддерживает именно столько арифметических операторов"],
                     image: "",
                     optionA: "4",
                     optionB: "3",
                     optionC: "5",
                     optionD: "2",
                     questionId: 112,
                     helpText: "Язык Swift поддерживает четыре стандартных арифметических оператора для всех числовых типов: сложение (+), вычитание (-), умножение (*), деление (/)."),
            
            Question(question: ["Какой арифметический оператор служит для конкатенации строковых значений?",
                                "Для конкатенации строковых значений служит этот арифметический оператор",
                                "Конкатенация строковых значений выполняется через этот арифметический оператор"],
                     image: "",
                     optionA: "Оператор сложения",
                     optionB: "Оператор деления",
                     optionC: "Оператор умножения",
                     optionD: "",
                     questionId: 113,
                     helpText: "Оператор сложения (+) служит для конкатенации или же склейки, строковых значений (тип String)."),
            
            Question(question: ["Какой оператор показывает какое количество b помещается внутри a?",
                                "Оператор, который показывает какое количество b помещается внутри c",
                                "Оператор, который возвращает остаток деления a на b"],
                     image: "",
                     optionA: "Целочисленного деления",
                     optionB: "Присваивания",
                     optionC: "Отображения",
                     optionD: "Сложения",
                     questionId: 114,
                     helpText: "Оператор целочисленного деления (a % b) показывает какое количество b помещается внутри a, и возвращает остаток деления a на b. Оператор целочисленного деления (%) в некоторых языках называется оператором деления по модулю. Однако учитывая его действие над отрицательными числами в Swift, этот оператор, строго говоря, выполняет деление с остатком, а не по модулю."),
            
            Question(question: ["Какой результат будет в данном выражении 9 % 4?",
                                "Какой остаток будет в выражении 9 % 4?"],
                     image: "",
                     optionA: "1",
                     optionB: "2",
                     optionC: "3",
                     optionD: "4",
                     questionId: 115,
                     helpText: "В одной девятке содержатся две четверки, а остатком будет 1. Чтобы получить результат деления a % b, оператор % вычисляет следующее выражение и возвращает остаток: a = (b × множитель) + остаток, где множитель показывает, сколько раз целых b содержится в a. Подставляя в это выражение 9 и 4, получим: 9 = (4 × 2) + 1"),
            
            Question(question: ["Какой результат будет в выражении -9 % 4?",
                                "Какой остаток будет в данном выражении -9 % 4?"],
                     image: "",
                     optionA: "-1",
                     optionB: "1",
                     optionC: "2",
                     optionD: "-2",
                     questionId: 116,
                     helpText: "Получаем: -9 = (4 × -2) + -1. Остаток будет равен -1."),
            
            Question(question: ["Какой результат будет в выражении 9 % -4?",
                                "9 % -4 какой будет остаток?"],
                     image: "",
                     optionA: "1",
                     optionB: "2",
                     optionC: "4",
                     optionD: "8",
                     questionId: 117,
                     helpText: "Если b отрицательно, его знак отбрасывается. Это означает, что выражения a % b и a % -b всегда будут давать одинаковый результат."),
            
            Question(question: ["Как правильно поставить оператор унарного префиксного минуса?",
                                "Где правильно используется оператор префиксного минуса?",
                                "Выберите вариант, где корректно используется оператор префиксного минуса"],
                     image: "",
                     optionA: "-1",
                     optionB: "- 2",
                     optionC: "8 -",
                     optionD: "",
                     questionId: 118,
                     helpText: "Для изменения знака числового значения служит префиксный минус -, который называется оператором унарного минуса. Оператор унарного минуса (-) ставится непосредственно перед значением без пробела."),
            
            Question(question: ["Как называется оператор в этом выражении: a += 2?",
                                "Как называется этот оператор: c += 11?",
                                "apples += 55, как называется подобный оператор?"],
                     image: "",
                     optionA: "Присваивания со сложением",
                     optionB: "Присваивания",
                     optionC: "Составного сложения",
                     optionD: "Сложения",
                     questionId: 119,
                     helpText: "Как и в языке C, в Swift имеются составные операторы присваивания, совмещающие простое присваивание (=) с другой операцией. Одним из примеров может служить оператор присваивания со сложением (+=): var a = 1, a += 2 // теперь a равно 3. Выражение a += 2 является краткой формой записи a = a + 2. Таким образом, один и тот же оператор выполняет одновременно операцию сложения и присваивания. Составные операторы присваивания не возвращают значение. К примеру, нельзя написать так: let b = a += 2."),
            
            Question(question: ["Оператор унарного плюса (+) изменяет исходное значение?",
                                "Изменяет ли оператор унарного плюса исходное значение?",
                                "Изменяется ли исходное значение при использовании оператора унарного плюса?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "- становится +",
                     optionD: "",
                     questionId: 120,
                     helpText: "Оператор унарного плюса (+) просто возвращает исходное значение без каких-либо изменений. Хотя оператор унарного плюса не выполняет никаких действий, он придает коду единообразие, позволяя зрительно отличать положительные значения от отрицательных."),
            
            Question(question: ["Сколько операторов сравнения поддерживает Swift?",
                                "Сколько в Swift операторов сравнения?",
                                "Сколько операторов сравнения поддерживается в Swift?"],
                     image: "",
                     optionA: "Шесть",
                     optionB: "Восемь",
                     optionC: "Четыре",
                     optionD: "Два",
                     questionId: 121,
                     helpText: "Язык Swift поддерживает все стандартные операторы сравнения из C: равно (a == b), не равно (a != b), больше (a > b), меньше (a < b), больше или равно (a >= b), меньше или равно (a <= b). Всего их шесть."),
            
            Question(question: ["Какое значение будет присвоено константе anotherMinusOne?",
                                "Константе anotherMinusOne присвоится именно это значение"],
                     image: "BasicOperators22",
                     optionA: "-1",
                     optionB: "1",
                     optionC: "-2",
                     optionD: "2",
                     questionId: 122,
                     helpText: "Оператор унарного плюса (+) просто возвращает исходное значение без каких-либо изменений. Хотя оператор унарного плюса не выполняет никаких действий, он придает коду единообразие, позволяя зрительно отличать положительные значения от отрицательных."),
            
            Question(question: ["Как пишется оператор сравнения равно?",
                                "Выберите оператор сравнения равно",
                                "Какой из этих операторов является оператором сравнения равно?"],
                     image: "",
                     optionA: "==",
                     optionB: "=",
                     optionC: "===",
                     optionD: "!=",
                     questionId: 123,
                     helpText: "Оператор сравнения равно (a == b)."),
            
            Question(question: ["Как пишется оператор сравнения “больше или равно”?",
                                "Выберите оператор сравнения “больше или равно”",
                                "Какой из этих операторов называется “больше или равно”?"],
                     image: "",
                     optionA: ">=",
                     optionB: "<=",
                     optionC: "=>",
                     optionD: "=<",
                     questionId: 124,
                     helpText: "Оператор сравнения больше или равно (a >= b)."),
            
            Question(question: ["Как пишется оператор проверки на идентичность/тождественность?",
                                "Выберите оператор проверки на идентичность или тождественность",
                                "Оператор проверки на идентичность/тождественность"],
                     image: "",
                     optionA: "===",
                     optionB: "==",
                     optionC: "=",
                     optionD: "!==",
                     questionId: 125,
                     helpText: "В языке Swift есть также два оператора проверки на идентичность/тождественность (=== и !==), определяющие, ссылаются ли два указателя на один и тот же экземпляр объекта."),
            
            Question(question: ["Что возвращают выражения с использованием операторов сравнения?",
                                "Какой результат у выражений с использованием любого оператора сравнения?",
                                "При использовании операторов сравнения какой мы получим результат?"],
                     image: "",
                     optionA: "Bool",
                     optionB: "Int",
                     optionC: "Double",
                     optionD: "nil",
                     questionId: 126,
                     helpText: "Каждый оператор сравнения возвращает значение типа Bool, указывающее, является ли выражение истинным: 1 == 1 // истина, так как 1 равно 1, 2 != 1 // истина, так как 2 не равно 1, 2 > 1 // истина, так как 2 больше чем 1 и т.д. Операторы сравнения часто используются в условных выражениях, включая инструкцию if."),
            
            Question(question: ["Синтаксис этого оператора выглядит следующим образом: выражение ? действие1 : действие2?",
                                "Какой это оператор: question ? answer1 : answer2?",
                                "Синтаксис какого оператора выглядит следующим образом: (a ? b : c)?"],
                     image: "",
                     optionA: "Тернарный условный оператор",
                     optionB: "Бинарный условный оператор",
                     optionC: "Оператор присваивания",
                     optionD: "Унарный оператор",
                     questionId: 127,
                     helpText: "Тернарный условный оператор — это специальный оператор из трех частей, имеющий следующий синтаксис: выражение ? действие1 : действие2. Он выполняет одно из двух действий в зависимости от того, является ли выражение true или false. Если выражение равно true, оператор выполняет действие №1 и возвращает его результат; в противном случае оператор выполняет действие №2 и возвращает его результат."),
            
            Question(question: ["Можно ли сравнивать между собой два кортежа с типом (String, Int)?",
                                "У вас есть два кортежа с типом (String, Int), можно ли их сравнить?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Только != или ==",
                     optionC: "Только < или >",
                     optionD: "Нет",
                     questionId: 128,
                     helpText: "Вы можете сравнивать кортежи, которые имеют одно и то же количество значений, которые, в свою очередь, должны быть сравниваемыми, что означает, что кортеж типа (Int, String) может быть сравнен с кортежем такого же типа. Кортежи сравниваются слева направо по одному значению за раз до тех пор, пока операция сравнения не найдет отличия между значениями. Если все значения кортежей попарно равны, то и кортежи так же считаются равными. Кортежи могут сравниваться, только в том случае, если оператор сравнения можно применить ко всем членам кортежей соответственно."),
            
            Question(question: ["Можно ли сравнивать между собой два кортежа с типом (String, Bool)?",
                                "У вас есть два кортежа с типом (String, Bool), можно ли их сравнить?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Только != или ==",
                     optionC: "Да",
                     optionD: "Только < или >",
                     questionId: 129,
                     helpText: "Кортежи могут сравниваться только в том случае, если оператор сравнения можно применить ко всем членам кортежей соответственно. Например, вы можете сравнить два кортежа типа (String, Int) потому что и String, и Int могут сравниваться операторами сравнения. Кортеж типа (String, Bool) сравниваться не может, так как к значениям типа Bool операторы сравнения не применяются."),
            
            Question(question: ["Этот оператор извлекает опционал a или возвращает значение по умолчанию b, если a = nil",
                                "Оператор, который извлекает опционал а, если он содержит значение?",
                                "Какой оператор возвращает значение по умолчанию, если переменная равна nil?"],
                     image: "",
                     optionA: "Объединения по nil",
                     optionB: "Проверки на идентичность",
                     optionC: "Опционального сравнения",
                     optionD: "Проверки на nil",
                     questionId: 130,
                     helpText: "Оператор объединения по nil (a ?? b) извлекает опционал a, если он содержит значение или возвращает значение по умолчанию b, если a равно nil. Выражение a может быть только опционалом. Выражение b должно быть такого же типа, что и значение внутри a."),
            
            Question(question: ["Какое значение будет присвоено константе colorToUse?",
                                "Какое значение получит colorToUse?"],
                     image: "BasicOperators31",
                     optionA: "yellow",
                     optionB: "Значение colorSetByUser",
                     optionC: "Столкнемся с ошибкой",
                     optionD: "nil",
                     questionId: 131,
                     helpText: "Переменная colorSetByUser объявлена как строковый (String) опционал и по умолчанию равна nil. Так как colorSetByUser является опционалом, ее значение можно анализировать посредством оператора объединения по nil. В вышеприведенном примере этот оператор задает начальное значение для строковой (String) переменной colorToUse. Так как colorSetByUser равно nil, выражение colorSetByUser ?? defaultColor возвратит значение defaultColor, т.е. если переменной colorSetByUser присвоить отличное от nil значение и снова передать ее в оператор объединения по nil, вместо значения по умолчанию будет использовано значение внутри colorSetByUser."),
            
            Question(question: ["Какое значение присвоится константе test, если мы пройдем компиляцию?",
                                "Если константе test будет присвоено значение, каким оно будет?",
                                "Каким значение получит константа test?"],
                     image: "BasicOperators32",
                     optionA: "К",
                     optionB: "nil",
                     optionC: "Столкнемся с ошибкой",
                     optionD: "Никакое",
                     questionId: 132,
                     helpText: "Оператор объединения по nil (a ?? b) извлекает опционал a, если он содержит значение, или возвращает значение по умолчанию b, если a равно nil. Выражение a может быть только опционалом. Выражение b должно быть такого же типа, что и значение внутри a. В данном примере, переменной character, с неявным объявлением типа, присваивается тип String по умолчанию, значит типы равны и константе test будет присвоено значение K."),
            
            Question(question: ["Какие операторы диапазона есть в Swift?",
                                "Операторы этих диапазонов поддерживаются в Swift",
                                "Swift поддерживает эти операторы диапазона"],
                     image: "",
                     optionA: "Замкнутый и полузамкнутый",
                     optionB: "Многопоточный и однопоточный",
                     optionC: "Многосторонний",
                     optionD: "Закрытый и открытый",
                     questionId: 133,
                     helpText: "В языке Swift есть замкнутый диапазон, полузамкнутый, и односторонний."),
            
            Question(question: ["Оператор этого диапазона задает диапазон от a до b, включая сами a и b. При этом значение a не должно превышать b",
                                "Оператор какого диапазона задает значение от a до b, включая сами a и b?"],
                     image: "",
                     optionA: "Замкнутого",
                     optionB: "Закрытого",
                     optionC: "Открытого",
                     optionD: "",
                     questionId: 134,
                     helpText: "Оператор замкнутого диапазона (a...b) задает диапазон от a до b, включая сами a и b. При этом значение a не должно превышать b. Оператор замкнутого диапазона удобно использовать при последовательном переборе значений из некоторого диапазона."),
            
            Question(question: ["Оператор этого диапазона задает диапазон от a до b, исключая значение b",
                                "Оператор какого диапазона задает значение от a до b, исключая значение b"],
                     image: "",
                     optionA: "Полузамкнутого",
                     optionB: "Полуоткрытого",
                     optionC: "Полузакрытого",
                     optionD: "Открытого",
                     questionId: 135,
                     helpText: "Оператор полузамкнутого диапазона (a..<b) задает диапазон от a до b, исключая значение b. Такой диапазон называется полузамкнутым, потому что он включает первое значение, но исключает последнее. Так же как и для оператора замкнутого диапазона, значение a не должно превышать b. Если значение a равно значению b, то итоговый диапазон будет пустым. Операторы полузамкнутого диапазона особенно удобны при работе с массивами и другими последовательностями, пронумерованными с нуля, когда нужно перебрать элементы от первого до последнего."),
            
            Question(question: ["Диапазон, который продолжается насколько возможно, но только в одну сторону, например, диапазон, который включает все элементы массива, начиная от 2 и до последнего индекса?",
                                "Диапазон, который продолжается насколько возможно, но только в одну сторону?",
                                "Диапазон, который включает все элементы массива, начиная от 2 и до последнего индекса?"],
                     image: "",
                     optionA: "Односторонний",
                     optionB: "Открытый",
                     optionC: "Бесконечный",
                     optionD: "",
                     questionId: 136,
                     helpText: "Операторы замкнутого диапазона имеют себе альтернативу - диапазон, который продолжается насколько возможно, но только в одну сторону, например, диапазон, который включает все элементы массива, начиная от 2 и до последнего индекса. В этих случаях вы можете пропустить значение с одной стороны оператора диапазона. Этот тип диапазона называется односторонним, потому что оператор имеет значение только с одной стороны"),
            
            Question(question: ["Сколько стандартных логических операторов поддерживает Swift?",
                                "Swift поддерживает именно столько стандартный логических операторов",
                                "Количество логических операторов, которые поддерживаются Swift"],
                     image: "",
                     optionA: "3",
                     optionB: "4",
                     optionC: "6",
                     optionD: "2",
                     questionId: 137,
                     helpText: "Логические операторы изменяют или комбинируют логические значения типа Boolean (булево) — true и false. Язык Swift, как и другие C-подобные языки, поддерживает три стандартных логических оператора: логическое НЕ (!a), логическое И (a && b), логическое ИЛИ (a || b)."),
            
            Question(question: ["Какой логический оператор инвертирует булево значение — true меняется на false, а false становится true?",
                                "Логический оператор, инвертирующий булево значение (true становится false)?",
                                "Именно этот префиксный логический оператор инвертирует булево значение"],
                     image: "",
                     optionA: "!",
                     optionB: "&&",
                     optionC: "||",
                     optionD: "=",
                     questionId: 138,
                     helpText: "Оператор логического НЕ (!a) инвертирует булево значение — true меняется на false, а false становится true. Оператор логического НЕ является префиксным и ставится непосредственно перед значением, без пробела. Удачный выбор булевой константы и имен переменных делает код коротким и понятным, без двойных отрицаний и громоздких логических выражений."),
            
            Question(question: ["Какой логический оператор дает на выходе true тогда и только тогда, когда оба его операнда также равны true?",
                                "Если хотя бы один операнд этого логического оператора будет false, все выражение будет false",
                                "Только когда оба операнда равны true, этот логический оператор дает true"],
                     image: "",
                     optionA: "&& И",
                     optionB: "|| ИЛИ",
                     optionC: "! НЕ",
                     optionD: "|&|",
                     questionId: 139,
                     helpText: "Оператор логического И (a && b) дает на выходе true тогда и только тогда, когда оба его операнда также равны true. Если хотя бы один из них равен false, результатом всего выражения тоже будет false. На самом деле если первое значение равно false, то второе даже не будет анализироваться, так как оно все равно не изменит общий результат на true. Такой подход называется краткой проверкой условия (short-circuit evaluation)."),
            
            Question(question: ["Если при использовании логического И (&&) первый операнд = false, будет ли проверяться второе выражение?",
                                "Произойдет ли проверка значения второго операнда, если при использовании логического И первый операнд = false?",
                                "Если первый операнд = false при использовании логического И (&&), будет ли проверяться второй?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     questionId: 140,
                     helpText: "Если первое значение равно false, то второе даже не будет анализироваться, так как оно все равно не изменит общий результат на true. Такой подход называется краткой проверкой условия (short-circuit evaluation)."),
            
            Question(question: ["Сколько логических операторов являются инфиксными?",
                                "Количество инфиксных логический операторов в Swift?",
                                "Swift поддерживает именно такое количество инфиксных логических операторов"],
                     image: "",
                     optionA: "2",
                     optionB: "1",
                     optionC: "3",
                     optionD: "Все",
                     questionId: 141,
                     helpText: "Инфиксными являются два логических оператора: && (И) и || (ИЛИ)."),
            
            Question(question: ["С помощью этого оператора можно создавать логические выражения, которые будут давать true, если хотя бы один из операндов равен true",
                                "Если хотя бы один из операндов = true, все выражение будет true",
                                "Этот логический оператор будет давать true, когда хотя бы один операнд = true"],
                     image: "",
                     optionA: "Логическое ИЛИ ||",
                     optionB: "Логическое НЕ !",
                     optionC: "Логическое И &&",
                     optionD: "",
                     questionId: 142,
                     helpText: "Оператор логического ИЛИ (a || b) является инфиксным и записывается в виде двух вертикальных палочек без пробела. С его помощью можно создавать логические выражения, которые будут давать true, если хотя бы один из операндов равен true."),
            
            Question(question: ["Если левая часть выражения с логическим ИЛИ равна true, будет ли анализироваться правая?",
                                "Левая часть выражения с логическим оператором || равна true, будем ли мы проверять вторую часть?",
                                "Будет ли проверяться вторая часть выражения, если при использовании логического ИЛИ в первой части true?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да, только если она false",
                     optionC: "Зависит от операндов",
                     optionD: "Да, только если она true",
                     questionId: 143,
                     helpText: "Как и в случае оператора логического И, оператор логического ИЛИ использует краткую проверку условия. Если левая часть выражения с логическим ИЛИ равна true, то правая не анализируется, так как ее значение не повлияет на общий результат."),
            
            Question(question: ["Что вернет print(red1 === red2), при let red1 = UIColor.red, let red2 = UIColor.red?",
                                "let green1 = UIColor.green, let green2 = UIColor.green, что при этом вернет print(green1 === green2)?",
                                "Если две переменные ссылаются на один цвет UIColor.blue, что вернет их сравнение на тождественность (===)?"],
                     image: "",
                     optionA: "true",
                     optionB: "false",
                     optionC: "Название цвета",
                     optionD: "Столкнемся с ошибкой",
                     questionId: 144,
                     helpText: "Когда мы инициализируем несколько переменных через ссылку на один и тот же UIColor.color, все переменные становятся ссылками на один экземпляр цвета, то есть они тождественны."),
            
            Question(question: ["Какой оператор вернет true при сравнении, если объекты ссылаются на одно и тоже место в памяти?",
                                "Если две переменные ссылаются на одно место в памяти, какой оператор вернет true при их сравнении?",
                                "Этим оператором мы можем сравнить две переменные, и он вернет true, если они ссылаются на одно и то же место в памяти"],
                     image: "",
                     optionA: "===",
                     optionB: "==",
                     optionC: "=",
                     optionD: "&&",
                     questionId: 145,
                     helpText: "Оператор проверки на тождественность (===) в Swift возвращает true, если переменные ссылаются на одно и то же место в памяти."),
            
            Question(question: ["Что выведется в консоль?"],
                     image: "BasicOperators46",
                     optionA: "true",
                     optionB: "false",
                     optionC: ".red",
                     optionD: "",
                     questionId: 146,
                     helpText: "В консоль выведется true. UIColor.red не создает каждый раз новый объект, а всегда возвращает один и тот же, поэтому оператор сравнения на тождественность возвращает true (переменные ссылаются на одно и то же место в памяти)."),
            
            Question(question: ["Какое число мы получим в консоль?"],
                     image: "BasicOperators47",
                     optionA: "6",
                     optionB: "8",
                     optionC: "9",
                     optionD: "Получим ошибку",
                     questionId: 147,
                     helpText: "Правильный ответ: 6. Несмотря на запутанные пробелы, Swift имеет четко определенные приоритеты операторов. В задаче порядок выполнения следующий: 1 + (2 * number) - 1"),
            
            Question(question: ["Какой диапазон у константы low?",
                                "Какой диапазон используется у константы high?"],
                     image: "BasicOperators48",
                     optionA: "Односторонний",
                     optionB: "Двусторонний",
                     optionC: "Полузамкнутый",
                     optionD: "",
                     questionId: 148,
                     helpText: "Swift вбирает в себя многое из других языков программирования. Так произошло и с односторонними диапазонами, которые уже давно используются при разработке, например, на Python. В таком виде диапазонов указывается лишь одна из границ, в то время как другая определяется автоматически."),
            
            //            Question(question: ["",
            //                                "",
            //                                ""],
            //                     image: "",
            //                     optionA: "",
            //                     optionB: "",
            //                     optionC: "",
            //                     optionD: "",
            //
            //                     questionId: 149,
            //                     helpText: ""),
            //
            //            Question(question: ["",
            //                                "",
            //                                ""],
            //                     image: "",
            //                     optionA: "",
            //                     optionB: "",
            //                     optionC: "",
            //                     optionD: "",
            //
            //                     questionId: 150,
            //                     helpText: ""),
            
        ]
    }
}
