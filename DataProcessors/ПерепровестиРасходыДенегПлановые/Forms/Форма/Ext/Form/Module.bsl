﻿
&НаКлиенте
Процедура КнопкаВыполнить(Команда)
	ВыполнитьНаСервере();
КонецПроцедуры

&НаСервере
 Процедура ВыполнитьНаСервере()
	Доки = Документы.РасходДенегПлановый.Выбрать();
	
	пока доки.Следующий() Цикл
		ДокОбъект = доки.ПолучитьОбъект();
		Попытка
			ДокОбъект.Записать(РежимЗаписиДокумента.Проведение);
				
		Исключение
		КонецПопытки;

	КонецЦикла;
	
КонецПроцедуры
