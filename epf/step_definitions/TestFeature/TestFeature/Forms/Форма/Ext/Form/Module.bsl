﻿///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
//Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
//Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий()","ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий","Дано Я открыл новый сеанс TestClient или подключил уже существующий"); //уже был в D:\git\vanessa-behavoir\features\Libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗакрылВсеОкнаКлиентскогоПриложения()","ЯЗакрылВсеОкнаКлиентскогоПриложения","И    Я закрыл все окна клиентского приложения"); //уже был в D:\git\vanessa-behavoir\features\Libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
	//ДобавитьШагВМассивТестов(ВсеТесты,"ОткрылосьОкно(Парам01)","ОткрылосьОкно","Когда открылось окно ""Начальная страница"""); //уже был в D:\git\vanessa-behavoir\features\Libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ВОткрытойФормеЯНажимаюНаКнопку(Парам01)","ВОткрытойФормеЯНажимаюНаКнопку","И     В открытой форме я нажимаю на кнопку ""Я первая кнопка"""); //уже был в D:\git\vanessa-behavoir\features\Libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf
	ДобавитьШагВМассивТестов(ВсеТесты,"ЛеваяКолонкаСоставаФормНачальнойСтраницыСодержит(Парам01)","ЛеваяКолонкаСоставаФормНачальнойСтраницыСодержит","Тогда левая колонка состава форм начальной страницы содержит ""Обработка.ТестоваяОбработка.Форма.ВтораяФорма""");
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗакрываюСеансTESTCLIENT()","ЯЗакрываюСеансTESTCLIENT","Тогда я закрываю сеанс TESTCLIENT"); //уже был в D:\git\vanessa-behavoir\features\Libraries\UITestRunner\step_definitions\ОткрытьTestClient.epf
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюГорячуюКлавишу(Парам01)","ЯНажимаюГорячуюКлавишу","И я нажимаю горячую клавишу ""F7""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВыполнилКоманду(Парам01)","ВыполнилКоманду","Когда выполнил команду ""e1cib/navigationpoint/startpage""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗакрываюВсеКлиентыПринудительно()","ЯЗакрываюВсеКлиентыПринудительно","Дано я закрываю все клиенты принудительно");
	ДобавитьШагВМассивТестов(ВсеТесты, "ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий()", "ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий","Я открыл новый сеанс TestClient или подключил уже существующий");
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаСервереБезКонтекста
Процедура УстановитьСоставФормПоУмолчанию()
	Обработки.ТестоваяОбработка.СоставФормНачальнойСтраницы("Обработка.ТестоваяОбработка.Форма.ПерваяФорма");
КонецПроцедуры 

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	УстановитьСоставФормПоУмолчанию();
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	УстановитьСоставФормПоУмолчанию();
КонецПроцедуры

&НаКлиенте
//Дано я закрываю все клиенты принудительно
//@ЯЗакрываюВсеКлиентыПринудительно()
Процедура ЯЗакрываюВсеКлиентыПринудительно() Экспорт

	Попытка
		КонтекстСохраняемый.ГлавноеОкноТестируемого.Закрыть();
	Исключение
	    Сообщить(ОписаниеОшибки());
	КонецПопытки;
	
	Попытка
		КонтекстСохраняемый.ТестовоеПриложение.РазорватьСоединение();   
		КонтекстСохраняемый.ТестовоеПриложение   = Неопределено;
	Исключение
	    Сообщить(ОписаниеОшибки());
	КонецПопытки; 

	Попытка
		КонтекстСохраняемый.ГлавноеОкноТестируемого = Неопределено;
		КонтекстСохраняемый.ТестовоеПриложение   = Неопределено;	
	Исключение
	    //ОписаниеОшибки()
	КонецПопытки; 
	
	Ванесса.ЗавершитьСеансыTestClientПринудительно();
	Ванесса.ОбъектКонтекстСохраняемый = Неопределено;
	
КонецПроцедуры


&НаКлиенте
Функция СоздатьТестовоеПриложение()
	ТипЗначения = Тип("ТестируемоеПриложение");
	ПараметрыОбъекта = Новый Массив;
	ПараметрыОбъекта.Добавить("localhost");
	ТестовоеПриложение = Новый (ТипЗначения,ПараметрыОбъекта);
	
	Возврат ТестовоеПриложение;
КонецФункции	

&НаКлиенте
Процедура ЗапуститьСеансTestClient(ДопПараметр = "")
	СисИнфо = Новый СистемнаяИнформация; 
	ВерсияПриложения = СисИнфо.ВерсияПриложения;
	
	КаталогБазы = СтрокаСоединенияИнформационнойБазы();
	Если Найти(ВРег(КаталогБазы),ВРег("File=")) > 0 Тогда
		КаталогБазы = СтрЗаменить(КаталогБазы,"File="," /F");
	Иначе
		КаталогБазы = СтрЗаменить(КаталогБазы,"Srvr=","/S");
		КаталогБазы = СтрЗаменить(КаталогБазы,""";Ref=""","\");
	КонецЕсли;
	КаталогБазы = СтрЗаменить(КаталогБазы,";","");
	
	СтрокаЗапуска1с = КаталогПрограммы() + "1cv8c";
	ЭтоLinux = Ложь;
	СисИнфо = Новый СистемнаяИнформация;
	Если Найти(Строка(СисИнфо.ТипПлатформы), "Linux")>0 Тогда 
		ЭтоLinux = Истина;
	КонецЕсли;
	
	Если ЭтоLinux = Ложь Тогда
		СтрокаЗапуска1с = СтрокаЗапуска1с + ".exe";
	Иначе
		КаталогБазы = СтрЗаменить(КаталогБазы, "\", "/");
	КонецЕсли;
		
	СтрокаЗапуска = " /TESTCLIENT " + ДопПараметр;	 
	
	ЗапуститьСистему(СтрокаЗапуска);
	
КонецПроцедуры //ЗапуститьСеансTestClient


&НаКлиенте
Функция ПолучитьГлавноеОкноТестируемого(ТестовоеПриложение)
	ГлавноеОкноТестируемого = Неопределено;
	КлиентсткиеОкнаТестируемогоПриложения = ТестовоеПриложение.ПолучитьПодчиненныеОбъекты();
	Для Каждого ТестируемоеОкно Из КлиентсткиеОкнаТестируемогоПриложения Цикл
		Если ТестируемоеОкно.Основное Тогда
			ГлавноеОкноТестируемого = ТестируемоеОкно;
			Прервать;
		КонецЕсли;
	КонецЦикла;
	
	Возврат ГлавноеОкноТестируемого;
КонецФункции	

&НаКлиенте
Процедура ЗаполнитьКонтекстСохраняемыйДляТестовоеПриложение(ТестовоеПриложение)
	КонтекстСохраняемый.Вставить("ТестовоеПриложение",ТестовоеПриложение);
	ГлавноеОкноТестируемого = ПолучитьГлавноеОкноТестируемого(ТестовоеПриложение);
	КонтекстСохраняемый.Вставить("ГлавноеОкноТестируемого",ГлавноеОкноТестируемого);
КонецПроцедуры


&НаКлиенте
//Я открыл новый сеанс TestClient или подключил уже существующий
//@ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий()
Процедура ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий() Экспорт
	
	Попытка
		ТестовоеПриложение = СоздатьТестовоеПриложение();
	Исключение
		Ванесса.СделатьСообщение("Сеанс должен быть запущен с ключом TESTMANAGER!");
		Ванесса.СделатьСообщение("TestClient НЕ подключен.");
	    ВызватьИсключение "TestClient НЕ подключен";
	КонецПопытки;
	
	Попытка
		ЗапуститьСеансTestClient();
	Исключение
		ВызватьИсключение "TestClient НЕ подключен, ошибка запуска клиента";
	КонецПопытки;
	
	Ванесса.Sleep(4);
	
	КонтекстСохраняемый.Вставить("ТестовоеПриложение",ТестовоеПриложение);
	Подключен = Ложь;
	
	// Пытаемся подключаться не более одной минуты
	ВремяОкончанияОжидания = ТекущаяДата() + 60;
	Подключен = Ложь;
	Пока Не ТекущаяДата() >= ВремяОкончанияОжидания Цикл
	    Попытка
	        ТестовоеПриложение.УстановитьСоединение();
	        Подключен = Истина;
	        Прервать;
		Исключение
			Сообщить(ОписаниеОшибки());
		КонецПопытки;
		Ванесса.Sleep(1);
		Ванесса.СделатьСообщение("Ожидаем подключения сеанса");
	    
	КонецЦикла;
	
	Ванесса.ПроверитьИстину(Подключен, "Не удалось за минуту подключить тестового клиента"); 
	
	ЗаполнитьКонтекстСохраняемыйДляТестовоеПриложение(ТестовоеПриложение);
	Ванесса.ПроверитьНеРавенство(КонтекстСохраняемый["ГлавноеОкноТестируемого"], Неопределено, "Не нашли главное окно тестируемого");
	Ванесса.СделатьСообщение("TestClient подключен.");	
	
КонецПроцедуры

////// Основные выполняемые шаги. 
&НаКлиенте
//И     В открытой форме я нажимаю на кнопку "Я первая кнопка"
//@ВОткрытойФормеЯНажимаюНаКнопку(Парам01)
Процедура ВОткрытойФормеЯНажимаюНаКнопку(ИмяКнопки) Экспорт
	
	ТекущаяФорма = КонтекстСохраняемый.ГлавноеОкноТестируемого;
	Кнопка       = ТекущаяФорма.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),ИмяКнопки);
	Ванесса.ПроверитьНеРавенство(Кнопка, Неопределено, "не нашли кнопку "+ИмяКнопки);
	Кнопка.Активизировать();
	Кнопка.Нажать();
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьМассивФормЛевойКолонки()
	ннс = ХранилищеСистемныхНастроек.Загрузить("Общее/НастройкиНачальнойСтраницы");
	сф = ннс.ПолучитьСоставФорм();
	Возврат сф.ЛеваяКолонка;
КонецФункции

&НаКлиенте
//Тогда левая колонка состава форм начальной страницы содержит "Обработка.ТестоваяОбработка.Форма.ВтораяФорма"
//@ЛеваяКолонкаСоставаФормНачальнойСтраницыСодержит(Парам01)
Процедура ЛеваяКолонкаСоставаФормНачальнойСтраницыСодержит(ИмяФормы) Экспорт
	
	сф = ПолучитьМассивФормЛевойКолонки();
	Ванесса.ПроверитьВхождениеВКоллекцию(ИмяФормы, сф, "не найдена форма в составе начальных страниц");
	
КонецПроцедуры

&НаКлиенте
//И я нажимаю горячую клавишу "F7"
//@ЯНажимаюГорячуюКлавишу(Парам01)
Процедура ЯНажимаюГорячуюКлавишу(СочетаниеКлавиш) Экспорт
	Сообщить("Вызываем горячую клавишу");
	Wsh = Новый COMОбъект("Wscript.shell");
	Wsh.SendKeys(СочетаниеКлавиш);
КонецПроцедуры

&НаКлиенте
//Когда выполнил команду "e1cib/navigationpoint/startpage"
//@ВыполнилКоманду(Парам01)
Процедура ВыполнилКоманду(Парам01) Экспорт
	КонтекстСохраняемый.ГлавноеОкноТестируемого.ВыполнитьКоманду(Парам01);
КонецПроцедуры

