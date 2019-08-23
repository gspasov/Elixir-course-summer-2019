defmodule Coursework do

  Предистория:

  Решили сте да си построите мечтаната за вас къща във мечтаният от вас град.
  След известно време обаче, решавате да автоматизирате част от процесите свързани с вашето ежедневие.
  Инсталирате сензори за автоматизирано отваряне и затваряне на прозорците, инсталирате соларни панели и ветрометър на покрива, и влагоабсорбатор в спалнята.
  Не спирате до там, ами си купувате и смарт хладилник и смарт пръскачки за градината.
  Градинарството винаги ви е било слабост, затова решавате да автоматизирате менежирането на вашата градина.

  Условие:
  1.
  Да се напарви джен сървър, който да прави заявка към API за замърсяването на въздуха през една минута. С която да се следи замърсяването от фини прахови частици(PM10),
  съответно ако въздухът е много мръсен да се вика функция която да затваря прозорците ако въздуха е мръсен, съответно ако са затворени да каже че вече са затворени и няма нужда да бъдат затваряни

  2.
  Втори дженсървър, който да прави заявки към API за климата през една минута. Ако времето е слънчево да показва "the solar pannels have been activated",
  ако температурата е над 30 градуса да се пуска вентилатор в стаята.
  Ако въздухът е много влажен и прозорците са отворени (30-60% е в рамките на допустимата влажност), да се пуска влагоабсорбатор.
  Ако прозорците се затворят влагата да намаля и при стойност под 20 влагоабсорбаторът да се спира.
  Да се провери градусът на вятъра и да се покаже като информация "the wind's type is <type> and comes from <direction>" използвайте скалата на Бютфорт за вида и

  3.
  Трети дженсървър имплементиращ хладилник. Да се отваря и затваря. Да се добавят продукти и да се консумират продукти.
  Да се дефинира списък с основни продукти, които ако ги няма като бройка да се изкарва известие, след определено време да се развалят продуктите и автоматично да се махат от хладилника.
  Различните видове продукти да се развалят за различмно време

  4.
  Четвърти дженсървър, който да имплементира градината, да се добави Timex библиотеката за да се следи локалното часово време на къщата.
  Да се пускат и да се спират пръскачките за поливане, като се провери какво е локалното време, ако то е между 10 сутринта и 7 следобяд, да не може да се пускат пръскачките.
  Да се взема от дженсървъра за времето информация дали вали, и ако вали пръскачките да не се пускат. Ако завали пръскачките да се спират.
  Примерна структура на градината:
  @garden %{
    "garden1" => {["apple, organe, grape"], 22, very_good/ good/ bad/ very_bad/rotten}
    "garden2" => %{"grape" => 20, "more grape" => 20}
  }
  Студента трябва да засее растения в двете градини, студента ще трябав да избере в коя градина каков ще засее. Ако една градина е много суха и растенията не могат да се развият,
  да започмва процес на разваняле. Състоянието на градината да се променя през 10 минути(ако е ниска влажността за 40 минути да стане от very good в rotten).
  Да се изкарват съобщения, когато статуса на една градина се промени. Всяка градина да си има отделна пръскачка.


  5.
  Всички дженъсръвъри да се пускат и спират автоматично през супервайзор, ако един спре да се рестартира, другите да продължават да си работят.

  6.
  Да се използва база данни Ecto postgress да се имплементират функции за добавяне и вземане на данни от базата, в базата да се съхранява информация за растенията.


  # да се направят 2 джен сървъра, първият парви заявки към апито за замърсяване на въздуха
  # другият към апито на оупън уедър
  #   заявките да се извършват през 1 минута


  # ако въздухът е много мръсен да се вика функция която да затваря прозорците ако въздуха е мръсен, съответно ако са затворени да каже че вече са затворени и няма нужда да бъдат затваряни

  # за оупън уедър - ако времето е слънчево да показва "соларните панели са активирани", ако температурата е над 30 градуса ад се пуска вентилатор в стаята,
  # ако въздухът е много влажен и прозорците са отворени! да се пуска влаго абсорбатор, ако прозорците се затворят влагата да намаля и при стойност под 20 влагоабсорбаторът да се спира
  # да се провери градусът на вятъра и да се покаже като информация "вятарът идва от  <посока>" и по скалата на бютфорт е


  # трети джен сървър имплементиращ хладилник, да се отваря затваря, да се добавят продукти да се консумират продукти,
  # да се дефинира списък с основни продукти, които ако ги няма като бройка да се изкарва нотификейшън
  # след определено време да се развалят продуктите и автоматично да се махат от хладилника
  # различните видове продукти да се развалят за различмно време


  # градина дженсървър, да се добави timex библиотеката, да се пускат пръскачки за поливане и да се спират с timex да се
  #  проверява какво е local времето и ако е между 10 сутринта и 7 селдобяд да не може да се пускат пръскачките, да се взима
  #   от дженсървъра за времето дали вали и ако вали пръскачките да не се пускат, ако завали пръскачките да се спират

  # ученика трябав да засее растения в две градини
  # ученика  да избере в коя градина какво растение ще се сее
  # ако една градина е много суха и растенията не могат да се развият започва процес на разваляне,
  # състоянието на градината да се променя на десет минута ако е ниска влажността за 40 минути да стане от very good to rotten
  # да се изкарват съобщения когато статуса на някоя градина се промени

  # Всяка градина да си има отделна пръскачка

  !!!! за даскала !!!! напарви таблица с растения и горна и долна граница на влажността за всяко от тях

  # всички дженсървъри да се стартират автоматично през супервайзор ако един спре да се рестартира, другите да продължават да си работят



  # бонус да се използва база данни Ecto postgress да се имплементират функции за добавяне и вземане на данни от базата


  Линкове:

  API за климата - https://openweathermap.org/api
  API за замърсяването на въздуха - https://openaq.org/
  Скала за PM10 - https://www.airveda.com/blog/Understanding-Particulate-Matter-and-Its-Associated-Health-Impact
  скала на бютфорт за скоростта на вятъра - "https://en.wikipedia.org/wiki/Beaufort_scale"
  градуси на вятъра - "http://snowfence.umn.edu/Components/winddirectionanddegreeswithouttable3.htm"
  timex библиотека - https://hex.pm/packages/timex
  httpoison - https://hexdocs.pm/httpoison/HTTPoison.html
  jason - https://hex.pm/packages/jason


end


