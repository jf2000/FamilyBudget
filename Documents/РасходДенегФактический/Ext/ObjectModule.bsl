﻿
Процедура ОбработкаЗаполнения(ДанныеЗаполнения, СтандартнаяОбработка)
	//{{__КОНСТРУКТОР_ВВОД_НА_ОСНОВАНИИ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	Если ТипЗнч(ДанныеЗаполнения) = Тип("ДокументСсылка.РасходДенегПлановый") Тогда
		// Заполнение шапки
		Дата = ДанныеЗаполнения.Дата;
		Период = ДанныеЗаполнения.Период;
		Адресат = ДанныеЗаполнения.Адресат;
		ДополнительнаяАналитика = ДанныеЗаполнения.ДополнительнаяАналитика;
		Сумма = ДанныеЗаполнения.Сумма;
		ТемаПокупки = ДанныеЗаполнения.ТемаПокупки;
	КонецЕсли;
	//}}__КОНСТРУКТОР_ВВОД_НА_ОСНОВАНИИ
КонецПроцедуры

Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
      ДвиженияПоРегистрам(Отказ, Режим)


	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

Процедура ДвиженияПоРегистрам(Отказ, Режим)
	
		// регистр ДвижениеДенегФакт Расход
	Движения.ДвижениеДенегФакт.Записывать = Истина;
	Движение = Движения.ДвижениеДенегФакт.Добавить();
	Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
	Движение.Период = Дата;
	Движение.Адресат = Адресат;
	Движение.ТемаПокупки = ТемаПокупки;
	Движение.ДополнительнаяАналитика = ДополнительнаяАналитика;
	Движение.Сумма = Сумма;

       // регистр ОбязательныеРасходыПланФакт Приход

	Если ОбязательныйЕжемесячныйРасход тогда
		Движения.ОбязательныеРасходыПланФакт.Записывать = Истина;
		Движение = Движения.ОбязательныеРасходыПланФакт.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = КонецДня(Дата);
		Движение.ПериодБюждета = Период;
		Движение.Адресат = Адресат;
		Движение.ТемаПокупки = ТемаПокупки;
		Движение.ДополнительнаяАналитика = ДополнительнаяАналитика;
		Движение.Сумма = Сумма;

	КонецЕсли;
	
	
	       // регистр всеРасходыПланФакт Приход

		Движения.ВсеРасходыПланФакт.Записывать = Истина;
		Движение = Движения.ВсеРасходыПланФакт.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = КонецДня(Дата);
		Движение.ПериодБюждета = Период;
		Движение.Адресат = Адресат;
		Движение.ТемаПокупки = ТемаПокупки;
		Движение.ДополнительнаяАналитика = ДополнительнаяАналитика;
		Движение.Сумма = Сумма;


КонецПроцедуры

Процедура Проц22 ()
	
КонецПроцедуры

Процедура Проц23 ()
	
КонецПроцедуры


Процедура Проц24 ()
	
КонецПроцедуры

	