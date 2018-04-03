@JS()
library moment;

import "package:js/js.dart";

/*external Moment moment([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, bool strict]);*/
/*external Moment moment([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, String language, bool strict]);*/
@JS()
external Moment moment(
    [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
    dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ format,
    dynamic /*bool|String*/ strict_language,
    bool strict]);

// Module moment
/*type RelativeTimeKey =
    's' | 'ss' | 'm' | 'mm' | 'h' | 'hh' | 'd' | 'dd' | 'M' | 'MM' | 'y' | 'yy';*/
/*type CalendarKey = 'sameDay' |
    'nextDay' |
    'lastDay' |
    'nextWeek' |
    'lastWeek' |
    'sameElse' |
    string;*/
/*type LongDateFormatKey = 'LTS' |
    'LT' |
    'L' |
    'LL' |
    'LLL' |
    'LLLL' |
    'lts' |
    'lt' |
    'l' |
    'll' |
    'lll' |
    'llll';*/
@anonymous
@JS()
abstract class Locale {
  external String calendar(
      [String /*'sameDay'|'nextDay'|'lastDay'|'nextWeek'|'lastWeek'|'sameElse'|String*/ key,
      Moment m,
      Moment now]);
  external String longDateFormat(
      String /*'LTS'|'LT'|'L'|'LL'|'LLL'|'LLLL'|'lts'|'lt'|'l'|'ll'|'lll'|'llll'*/ key);
  external String invalidDate();
  external String ordinal(num n);
  external String preparse(String inp);
  external String postformat(String inp);
  external String relativeTime(
      num n,
      bool withoutSuffix,
      String /*'s'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy'*/ key,
      bool isFuture);
  external String pastFuture(num diff, String absRelTime);
  external void JS$set(Object config);
  /*external List<String> months();*/
  /*external String months(Moment m, [String format]);*/
  external dynamic /*List<String>|String*/ months([Moment m, String format]);
  /*external List<String> monthsShort();*/
  /*external String monthsShort(Moment m, [String format]);*/
  external dynamic /*List<String>|String*/ monthsShort(
      [Moment m, String format]);
  external num monthsParse(String monthName, String format, bool strict);
  external RegExp monthsRegex(bool strict);
  external RegExp monthsShortRegex(bool strict);
  external num week(Moment m);
  external num firstDayOfYear();
  external num firstDayOfWeek();
  /*external List<String> weekdays();*/
  /*external String weekdays(Moment m, [String format]);*/
  external dynamic /*List<String>|String*/ weekdays([Moment m, String format]);
  /*external List<String> weekdaysMin();*/
  /*external String weekdaysMin(Moment m);*/
  external dynamic /*List<String>|String*/ weekdaysMin([Moment m]);
  /*external List<String> weekdaysShort();*/
  /*external String weekdaysShort(Moment m);*/
  external dynamic /*List<String>|String*/ weekdaysShort([Moment m]);
  external num weekdaysParse(String weekdayName, String format, bool strict);
  external RegExp weekdaysRegex(bool strict);
  external RegExp weekdaysShortRegex(bool strict);
  external RegExp weekdaysMinRegex(bool strict);
  external bool isPM(String input);
  external String meridiem(num hour, num minute, bool isLower);
}

@anonymous
@JS()
abstract class StandaloneFormatSpec {
  external List<String> get format;
  external set format(List<String> v);
  external List<String> get standalone;
  external set standalone(List<String> v);
  external RegExp get isFormat;
  external set isFormat(RegExp v);
  external factory StandaloneFormatSpec(
      {List<String> format, List<String> standalone, RegExp isFormat});
}

@anonymous
@JS()
abstract class WeekSpec {
  external num get dow;
  external set dow(num v);
  external num get doy;
  external set doy(num v);
  external factory WeekSpec({num dow, num doy});
}

/*type CalendarSpecVal = string | ((m?: MomentInput, now?: Moment) => string);*/
@anonymous
@JS()
abstract class CalendarSpec {
  external dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ get sameDay;
  external set sameDay(
      dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ v);
  external dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ get nextDay;
  external set nextDay(
      dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ v);
  external dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ get lastDay;
  external set lastDay(
      dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ v);
  external dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ get nextWeek;
  external set nextWeek(
      dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ v);
  external dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ get lastWeek;
  external set lastWeek(
      dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ v);
  external dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ get sameElse;
  external set sameElse(
      dynamic /*String|(m?: MomentInput, now?: Moment) => string*/ v);

  /// any additional properties might be used with moment.calendarFormat
  /* Index signature is not yet supported by JavaScript interop. */
}

/*type RelativeTimeSpecVal = (
    string |
    ((n: number, withoutSuffix: boolean,
      key: RelativeTimeKey, isFuture: boolean) => string)
  );*/
/*type RelativeTimeFuturePastVal = string | ((relTime: string) => string);*/
@anonymous
@JS()
abstract class RelativeTimeSpec {
  external dynamic /*String|Func1<String, String>*/ get future;
  external set future(dynamic /*String|Func1<String, String>*/ v);
  external dynamic /*String|Func1<String, String>*/ get past;
  external set past(dynamic /*String|Func1<String, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get s;
  external set s(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get ss;
  external set ss(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get m;
  external set m(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get mm;
  external set mm(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get h;
  external set h(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get hh;
  external set hh(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get d;
  external set d(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get dd;
  external set dd(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get M;
  external set M(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get MM;
  external set MM(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get y;
  external set y(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ get yy;
  external set yy(
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ v);
  external factory RelativeTimeSpec(
      {dynamic /*String|Func1<String, String>*/ future,
      dynamic /*String|Func1<String, String>*/ past,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ s,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ ss,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ m,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ mm,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ h,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ hh,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ d,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ dd,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ M,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ MM,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ y,
      dynamic /*String|Func4<num, bool, 's'|'ss'|'m'|'mm'|'h'|'hh'|'d'|'dd'|'M'|'MM'|'y'|'yy', bool, String>*/ yy});
}

@anonymous
@JS()
abstract class LongDateFormatSpec {
  external String get LTS;
  external set LTS(String v);
  external String get LT;
  external set LT(String v);
  external String get L;
  external set L(String v);
  external String get LL;
  external set LL(String v);
  external String get LLL;
  external set LLL(String v);
  external String get LLLL;
  external set LLLL(String v);

  /// lets forget for a sec that any upper/lower permutation will also work
  external String get lts;
  external set lts(String v);
  external String get lt;
  external set lt(String v);
  external String get l;
  external set l(String v);
  external String get ll;
  external set ll(String v);
  external String get lll;
  external set lll(String v);
  external String get llll;
  external set llll(String v);
  external factory LongDateFormatSpec(
      {String LTS,
      String LT,
      String L,
      String LL,
      String LLL,
      String LLLL,
      String lts,
      String lt,
      String l,
      String ll,
      String lll,
      String llll});
}

typedef String MonthWeekdayFn(Moment momentToFormat, [String format]);
typedef String WeekdaySimpleFn(Moment momentToFormat);

@anonymous
@JS()
abstract class LocaleSpecification {
  external dynamic /*List<String>|StandaloneFormatSpec|MonthWeekdayFn*/ get months;
  external set months(
      dynamic /*List<String>|StandaloneFormatSpec|MonthWeekdayFn*/ v);
  external dynamic /*List<String>|StandaloneFormatSpec|MonthWeekdayFn*/ get monthsShort;
  external set monthsShort(
      dynamic /*List<String>|StandaloneFormatSpec|MonthWeekdayFn*/ v);
  external dynamic /*List<String>|StandaloneFormatSpec|MonthWeekdayFn*/ get weekdays;
  external set weekdays(
      dynamic /*List<String>|StandaloneFormatSpec|MonthWeekdayFn*/ v);
  external dynamic /*List<String>|StandaloneFormatSpec|WeekdaySimpleFn*/ get weekdaysShort;
  external set weekdaysShort(
      dynamic /*List<String>|StandaloneFormatSpec|WeekdaySimpleFn*/ v);
  external dynamic /*List<String>|StandaloneFormatSpec|WeekdaySimpleFn*/ get weekdaysMin;
  external set weekdaysMin(
      dynamic /*List<String>|StandaloneFormatSpec|WeekdaySimpleFn*/ v);
  external RegExp get meridiemParse;
  external set meridiemParse(RegExp v);
  external LongDateFormatSpec get longDateFormat;
  external set longDateFormat(LongDateFormatSpec v);
  external CalendarSpec get calendar;
  external set calendar(CalendarSpec v);
  external RelativeTimeSpec get relativeTime;
  external set relativeTime(RelativeTimeSpec v);
  external String get invalidDate;
  external set invalidDate(String v);
  external RegExp get ordinalParse;
  external set ordinalParse(RegExp v);
  external WeekSpec get week;
  external set week(WeekSpec v);

  /// Allow anything: in general any property that is passed as locale spec is
  /// put in the locale object so it can be used by locale functions
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class MomentObjectOutput {
  external num get years;
  external set years(num v);

  /// One digit
  external num get months;
  external set months(num v);

  /// Day of the month
  external num get date;
  external set date(num v);
  external num get hours;
  external set hours(num v);
  external num get minutes;
  external set minutes(num v);
  external num get seconds;
  external set seconds(num v);
  external num get milliseconds;
  external set milliseconds(num v);
  external factory MomentObjectOutput(
      {num years,
      num months,
      num date,
      num hours,
      num minutes,
      num seconds,
      num milliseconds});
}

@anonymous
@JS()
abstract class Duration {
  external Duration clone();
  external String humanize([bool withSuffix]);
  external Duration abs();
  external num JS$as(
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'*/ units);
  external num JS$get(
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'*/ units);
  external num milliseconds();
  external num asMilliseconds();
  external num seconds();
  external num asSeconds();
  external num minutes();
  external num asMinutes();
  external num hours();
  external num asHours();
  external num days();
  external num asDays();
  external num weeks();
  external num asWeeks();
  external num months();
  external num asMonths();
  external num years();
  external num asYears();
  external Duration add(
      [dynamic /*Duration|num|String|FromTo|DurationInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'*/ unit]);
  external Duration subtract(
      [dynamic /*Duration|num|String|FromTo|DurationInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'*/ unit]);
  /*external String locale();*/
  /*external Duration locale(String|Moment|Duration|List<String>|bool locale);*/
  external dynamic /*String|Duration*/ locale(
      [dynamic /*String|Moment|Duration|List<String>|bool*/ locale]);
  external Locale localeData();
  external String toISOString();
  external String toJSON();

  /// since version 2.8.0
  /*external Moment lang(String|Moment|Duration|List<String>|bool locale);*/
  /// since version 2.8.0
  /*external Locale lang();*/
  external dynamic /*Moment|Locale*/ lang(
      [dynamic /*String|Moment|Duration|List<String>|bool*/ locale]);
  external String toIsoString();
}

@anonymous
@JS()
abstract class MomentRelativeTime {
  external dynamic get future;
  external set future(dynamic v);
  external dynamic get past;
  external set past(dynamic v);
  external dynamic get s;
  external set s(dynamic v);
  external dynamic get ss;
  external set ss(dynamic v);
  external dynamic get m;
  external set m(dynamic v);
  external dynamic get mm;
  external set mm(dynamic v);
  external dynamic get h;
  external set h(dynamic v);
  external dynamic get hh;
  external set hh(dynamic v);
  external dynamic get d;
  external set d(dynamic v);
  external dynamic get dd;
  external set dd(dynamic v);
  external dynamic get M;
  external set M(dynamic v);
  external dynamic get MM;
  external set MM(dynamic v);
  external dynamic get y;
  external set y(dynamic v);
  external dynamic get yy;
  external set yy(dynamic v);
  external factory MomentRelativeTime(
      {dynamic future,
      dynamic past,
      dynamic s,
      dynamic ss,
      dynamic m,
      dynamic mm,
      dynamic h,
      dynamic hh,
      dynamic d,
      dynamic dd,
      dynamic M,
      dynamic MM,
      dynamic y,
      dynamic yy});
}

@anonymous
@JS()
abstract class MomentLongDateFormat {
  external String get L;
  external set L(String v);
  external String get LL;
  external set LL(String v);
  external String get LLL;
  external set LLL(String v);
  external String get LLLL;
  external set LLLL(String v);
  external String get LT;
  external set LT(String v);
  external String get LTS;
  external set LTS(String v);
  external String get l;
  external set l(String v);
  external String get ll;
  external set ll(String v);
  external String get lll;
  external set lll(String v);
  external String get llll;
  external set llll(String v);
  external String get lt;
  external set lt(String v);
  external String get lts;
  external set lts(String v);
  external factory MomentLongDateFormat(
      {String L,
      String LL,
      String LLL,
      String LLLL,
      String LT,
      String LTS,
      String l,
      String ll,
      String lll,
      String llll,
      String lt,
      String lts});
}

@anonymous
@JS()
abstract class MomentParsingFlags {
  external bool get empty;
  external set empty(bool v);
  external List<String> get unusedTokens;
  external set unusedTokens(List<String> v);
  external List<String> get unusedInput;
  external set unusedInput(List<String> v);
  external num get overflow;
  external set overflow(num v);
  external num get charsLeftOver;
  external set charsLeftOver(num v);
  external bool get nullInput;
  external set nullInput(bool v);
  external dynamic /*String|Null*/ get invalidMonth;
  external set invalidMonth(dynamic /*String|Null*/ v);
  external bool get invalidFormat;
  external set invalidFormat(bool v);
  external bool get userInvalidated;
  external set userInvalidated(bool v);
  external bool get iso;
  external set iso(bool v);
  external List<dynamic> get parsedDateParts;
  external set parsedDateParts(List<dynamic> v);
  external dynamic /*String|Null*/ get meridiem;
  external set meridiem(dynamic /*String|Null*/ v);
  external factory MomentParsingFlags(
      {bool empty,
      List<String> unusedTokens,
      List<String> unusedInput,
      num overflow,
      num charsLeftOver,
      bool nullInput,
      dynamic /*String|Null*/ invalidMonth,
      bool invalidFormat,
      bool userInvalidated,
      bool iso,
      List<dynamic> parsedDateParts,
      dynamic /*String|Null*/ meridiem});
}

@anonymous
@JS()
abstract class MomentParsingFlagsOpt {
  external bool get empty;
  external set empty(bool v);
  external List<String> get unusedTokens;
  external set unusedTokens(List<String> v);
  external List<String> get unusedInput;
  external set unusedInput(List<String> v);
  external num get overflow;
  external set overflow(num v);
  external num get charsLeftOver;
  external set charsLeftOver(num v);
  external bool get nullInput;
  external set nullInput(bool v);
  external String get invalidMonth;
  external set invalidMonth(String v);
  external bool get invalidFormat;
  external set invalidFormat(bool v);
  external bool get userInvalidated;
  external set userInvalidated(bool v);
  external bool get iso;
  external set iso(bool v);
  external List<dynamic> get parsedDateParts;
  external set parsedDateParts(List<dynamic> v);
  external String get meridiem;
  external set meridiem(String v);
  external factory MomentParsingFlagsOpt(
      {bool empty,
      List<String> unusedTokens,
      List<String> unusedInput,
      num overflow,
      num charsLeftOver,
      bool nullInput,
      String invalidMonth,
      bool invalidFormat,
      bool userInvalidated,
      bool iso,
      List<dynamic> parsedDateParts,
      String meridiem});
}

@anonymous
@JS()
abstract class MomentBuiltinFormat {
  external dynamic get JS$___momentBuiltinFormatBrand;
  external set JS$___momentBuiltinFormatBrand(dynamic v);
  external factory MomentBuiltinFormat(
      {dynamic JS$___momentBuiltinFormatBrand});
}

/*type MomentFormatSpecification = string | MomentBuiltinFormat | (string | MomentBuiltinFormat)[];*/

// Module unitOfTime
/*type Base = ("year" |
    "years" |
    "y" |
    "month" |
    "months" |
    "M" |
    "week" |
    "weeks" |
    "w" |
    "day" |
    "days" |
    "d" |
    "hour" |
    "hours" |
    "h" |
    "minute" |
    "minutes" |
    "m" |
    "second" |
    "seconds" |
    "s" |
    "millisecond" |
    "milliseconds" |
    "ms");*/
/*type _quarter = "quarter" | "quarters" | "Q";*/
/*type _isoWeek = "isoWeek" | "isoWeeks" | "W";*/
/*type _date = "date" | "dates" | "D";*/
/*type DurationConstructor = Base | _quarter;*/
/*type DurationAs = Base;*/
/*type StartOf = Base | _quarter | _isoWeek | _date;*/
/*type Diff = Base | _quarter;*/
/*type MomentConstructor = Base | _date;*/
/*type All = Base |
    _quarter |
    _isoWeek |
    _date |
    "weekYear" |
    "weekYears" |
    "gg" |
    "isoWeekYear" |
    "isoWeekYears" |
    "GG" |
    "dayOfYear" |
    "dayOfYears" |
    "DDD" |
    "weekday" |
    "weekdays" |
    "e" |
    "isoWeekday" |
    "isoWeekdays" |
    "E";*/

// End module unitOfTime
@anonymous
@JS()
abstract class MomentInputObject {
  external num get years;
  external set years(num v);
  external num get year;
  external set year(num v);
  external num get y;
  external set y(num v);
  external num get months;
  external set months(num v);
  external num get month;
  external set month(num v);
  external num get M;
  external set M(num v);
  external num get days;
  external set days(num v);
  external num get day;
  external set day(num v);
  external num get d;
  external set d(num v);
  external num get dates;
  external set dates(num v);
  external num get date;
  external set date(num v);
  external num get D;
  external set D(num v);
  external num get hours;
  external set hours(num v);
  external num get hour;
  external set hour(num v);
  external num get h;
  external set h(num v);
  external num get minutes;
  external set minutes(num v);
  external num get minute;
  external set minute(num v);
  external num get m;
  external set m(num v);
  external num get seconds;
  external set seconds(num v);
  external num get second;
  external set second(num v);
  external num get s;
  external set s(num v);
  external num get milliseconds;
  external set milliseconds(num v);
  external num get millisecond;
  external set millisecond(num v);
  external num get ms;
  external set ms(num v);
  external factory MomentInputObject(
      {num years,
      num year,
      num y,
      num months,
      num month,
      num M,
      num days,
      num day,
      num d,
      num dates,
      num date,
      num D,
      num hours,
      num hour,
      num h,
      num minutes,
      num minute,
      num m,
      num seconds,
      num second,
      num s,
      num milliseconds,
      num millisecond,
      num ms});
}

@anonymous
@JS()
abstract class DurationInputObject implements MomentInputObject {
  external num get quarters;
  external set quarters(num v);
  external num get quarter;
  external set quarter(num v);
  external num get Q;
  external set Q(num v);
  external num get weeks;
  external set weeks(num v);
  external num get week;
  external set week(num v);
  external num get w;
  external set w(num v);
  external factory DurationInputObject(
      {num quarters,
      num quarter,
      num Q,
      num weeks,
      num week,
      num w,
      num years,
      num year,
      num y,
      num months,
      num month,
      num M,
      num days,
      num day,
      num d,
      num dates,
      num date,
      num D,
      num hours,
      num hour,
      num h,
      num minutes,
      num minute,
      num m,
      num seconds,
      num second,
      num s,
      num milliseconds,
      num millisecond,
      num ms});
}

@anonymous
@JS()
abstract class MomentSetObject implements MomentInputObject {
  external num get weekYears;
  external set weekYears(num v);
  external num get weekYear;
  external set weekYear(num v);
  external num get gg;
  external set gg(num v);
  external num get isoWeekYears;
  external set isoWeekYears(num v);
  external num get isoWeekYear;
  external set isoWeekYear(num v);
  external num get GG;
  external set GG(num v);
  external num get quarters;
  external set quarters(num v);
  external num get quarter;
  external set quarter(num v);
  external num get Q;
  external set Q(num v);
  external num get weeks;
  external set weeks(num v);
  external num get week;
  external set week(num v);
  external num get w;
  external set w(num v);
  external num get isoWeeks;
  external set isoWeeks(num v);
  external num get isoWeek;
  external set isoWeek(num v);
  external num get W;
  external set W(num v);
  external num get dayOfYears;
  external set dayOfYears(num v);
  external num get dayOfYear;
  external set dayOfYear(num v);
  external num get DDD;
  external set DDD(num v);
  external num get weekdays;
  external set weekdays(num v);
  external num get weekday;
  external set weekday(num v);
  external num get e;
  external set e(num v);
  external num get isoWeekdays;
  external set isoWeekdays(num v);
  external num get isoWeekday;
  external set isoWeekday(num v);
  external num get E;
  external set E(num v);
  external factory MomentSetObject(
      {num weekYears,
      num weekYear,
      num gg,
      num isoWeekYears,
      num isoWeekYear,
      num GG,
      num quarters,
      num quarter,
      num Q,
      num weeks,
      num week,
      num w,
      num isoWeeks,
      num isoWeek,
      num W,
      num dayOfYears,
      num dayOfYear,
      num DDD,
      num weekdays,
      num weekday,
      num e,
      num isoWeekdays,
      num isoWeekday,
      num E,
      num years,
      num year,
      num y,
      num months,
      num month,
      num M,
      num days,
      num day,
      num d,
      num dates,
      num date,
      num D,
      num hours,
      num hour,
      num h,
      num minutes,
      num minute,
      num m,
      num seconds,
      num second,
      num s,
      num milliseconds,
      num millisecond,
      num ms});
}

@anonymous
@JS()
abstract class FromTo {
  external dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ get from;
  external set from(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ v);
  external dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ get to;
  external set to(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ v);
  external factory FromTo(
      {dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ from,
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ to});
}

/*type MomentInput = Moment | Date | string | number | (number | string)[] | MomentInputObject | void;*/
/*type DurationInputArg1 = Duration | number | string | FromTo | DurationInputObject | void;*/
/*type DurationInputArg2 = unitOfTime.DurationConstructor;*/
/*type LocaleSpecifier = string | Moment | Duration | string[] | boolean;*/
@anonymous
@JS()
abstract class MomentCreationData {
  external dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ get input;
  external set input(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ v);
  external dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ get format;
  external set format(
      dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ v);
  external Locale get locale;
  external set locale(Locale v);
  external bool get isUTC;
  external set isUTC(bool v);
  external bool get strict;
  external set strict(bool v);
  external factory MomentCreationData(
      {dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ input,
      dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ format,
      Locale locale,
      bool isUTC,
      bool strict});
}

@anonymous
@JS()
abstract class Moment implements Object {
  external String format([String format]);
  external Moment startOf(
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ unitOfTime);
  external Moment endOf(
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ unitOfTime);
  /*external Moment add([Duration|num|String|FromTo|DurationInputObject|Null amount, 'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q' unit]);*/
  /// reverse syntax
  /*external Moment add('year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q' unit, num|String amount);*/
  external Moment add(
      [dynamic /*Duration|num|String|FromTo|DurationInputObject|Null|'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'*/ amount_unit,
      dynamic /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|num|String*/ unit_amount]);
  /*external Moment subtract([Duration|num|String|FromTo|DurationInputObject|Null amount, 'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q' unit]);*/
  /// reverse syntax
  /*external Moment subtract('year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q' unit, num|String amount);*/
  external Moment subtract(
      [dynamic /*Duration|num|String|FromTo|DurationInputObject|Null|'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'*/ amount_unit,
      dynamic /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|num|String*/ unit_amount]);
  external String calendar(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ time,
      CalendarSpec formats]);
  external Moment clone();
  external num valueOf();

  /// current date/time in local mode
  external Moment local([bool keepLocalTime]);
  external bool isLocal();

  /// current date/time in UTC mode
  external Moment utc([bool keepLocalTime]);
  external bool isUTC();

  /// use isUTC
  external bool isUtc();
  external Moment parseZone();
  external bool isValid();
  external num invalidAt();
  external bool hasAlignedHourOffset(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ other]);
  external MomentCreationData creationData();
  external MomentParsingFlags parsingFlags();
  /*external Moment year(num y);*/
  /*external num year();*/
  external dynamic /*Moment|num*/ year([num y]);

  /// use year(y)
  /*external Moment years(num y);*/
  /// use year()
  /*external num years();*/
  external dynamic /*Moment|num*/ years([num y]);
  /*external num quarter();*/
  /*external Moment quarter(num q);*/
  external dynamic /*num|Moment*/ quarter([num q]);
  /*external num quarters();*/
  /*external Moment quarters(num q);*/
  external dynamic /*num|Moment*/ quarters([num q]);
  /*external Moment month(num|String M);*/
  /*external num month();*/
  external dynamic /*Moment|num*/ month([dynamic /*num|String*/ M]);

  /// use month(M)
  /*external Moment months(num|String M);*/
  /// use month()
  /*external num months();*/
  external dynamic /*Moment|num*/ months([dynamic /*num|String*/ M]);
  /*external Moment day(num|String d);*/
  /*external num day();*/
  external dynamic /*Moment|num*/ day([dynamic /*num|String*/ d]);
  /*external Moment days(num|String d);*/
  /*external num days();*/
  external dynamic /*Moment|num*/ days([dynamic /*num|String*/ d]);
  /*external Moment date(num d);*/
  /*external num date();*/
  external dynamic /*Moment|num*/ date([num d]);

  /// use date(d)
  /*external Moment dates(num d);*/
  /// use date()
  /*external num dates();*/
  external dynamic /*Moment|num*/ dates([num d]);
  /*external Moment hour(num h);*/
  /*external num hour();*/
  external dynamic /*Moment|num*/ hour([num h]);
  /*external Moment hours(num h);*/
  /*external num hours();*/
  external dynamic /*Moment|num*/ hours([num h]);
  /*external Moment minute(num m);*/
  /*external num minute();*/
  external dynamic /*Moment|num*/ minute([num m]);
  /*external Moment minutes(num m);*/
  /*external num minutes();*/
  external dynamic /*Moment|num*/ minutes([num m]);
  /*external Moment second(num s);*/
  /*external num second();*/
  external dynamic /*Moment|num*/ second([num s]);
  /*external Moment seconds(num s);*/
  /*external num seconds();*/
  external dynamic /*Moment|num*/ seconds([num s]);
  /*external Moment millisecond(num ms);*/
  /*external num millisecond();*/
  external dynamic /*Moment|num*/ millisecond([num ms]);
  /*external Moment milliseconds(num ms);*/
  /*external num milliseconds();*/
  external dynamic /*Moment|num*/ milliseconds([num ms]);
  /*external num weekday();*/
  /*external Moment weekday(num d);*/
  external dynamic /*num|Moment*/ weekday([num d]);
  /*external num isoWeekday();*/
  /*external Moment isoWeekday(num|String d);*/
  external dynamic /*num|Moment*/ isoWeekday([dynamic /*num|String*/ d]);
  /*external num weekYear();*/
  /*external Moment weekYear(num d);*/
  external dynamic /*num|Moment*/ weekYear([num d]);
  /*external num isoWeekYear();*/
  /*external Moment isoWeekYear(num d);*/
  external dynamic /*num|Moment*/ isoWeekYear([num d]);
  /*external num week();*/
  /*external Moment week(num d);*/
  external dynamic /*num|Moment*/ week([num d]);
  /*external num weeks();*/
  /*external Moment weeks(num d);*/
  external dynamic /*num|Moment*/ weeks([num d]);
  /*external num isoWeek();*/
  /*external Moment isoWeek(num d);*/
  external dynamic /*num|Moment*/ isoWeek([num d]);
  /*external num isoWeeks();*/
  /*external Moment isoWeeks(num d);*/
  external dynamic /*num|Moment*/ isoWeeks([num d]);
  external num weeksInYear();
  external num isoWeeksInYear();
  /*external num dayOfYear();*/
  /*external Moment dayOfYear(num d);*/
  external dynamic /*num|Moment*/ dayOfYear([num d]);
  external String from(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      [bool suffix]);
  external String to(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      [bool suffix]);
  external String fromNow([bool withoutSuffix]);
  external String toNow([bool withoutPrefix]);
  external num diff(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ b,
      [String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'*/ unitOfTime,
      bool precise]);
  external List<num> toArray();
  external DateTime toDate();
  external String toISOString([bool keepOffset]);
  external String inspect();
  external String toJSON();
  external num unix();
  external bool isLeapYear();

  /// in favor of utcOffset
  /*external num zone();*/
  /*external Moment zone(num|String b);*/
  external dynamic /*num|Moment*/ zone([dynamic /*num|String*/ b]);
  /*external num utcOffset();*/
  /*external Moment utcOffset(num|String b, [bool keepLocalTime]);*/
  external dynamic /*num|Moment*/ utcOffset(
      [dynamic /*num|String*/ b, bool keepLocalTime]);
  external bool isUtcOffset();
  external num daysInMonth();
  external bool isDST();
  external String zoneAbbr();
  external String zoneName();
  external bool isBefore(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ granularity]);
  external bool isAfter(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ granularity]);
  external bool isSame(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ granularity]);
  external bool isSameOrAfter(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ granularity]);
  external bool isSameOrBefore(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ granularity]);
  external bool isBetween(
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ a,
      dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ b,
      [String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'*/ granularity,
      String /*'()'|'[)'|'(]'|'[]'*/ inclusivity]);

  /// as of 2.8.0, use locale
  /*external Moment lang(String|Moment|Duration|List<String>|bool language);*/
  /// as of 2.8.0, use locale
  /*external Locale lang();*/
  external dynamic /*Moment|Locale*/ lang(
      [dynamic /*String|Moment|Duration|List<String>|bool*/ language]);
  /*external String locale();*/
  /*external Moment locale(String|Moment|Duration|List<String>|bool locale);*/
  external dynamic /*String|Moment*/ locale(
      [dynamic /*String|Moment|Duration|List<String>|bool*/ locale]);
  external Locale localeData();

  /// no reliable implementation
  external bool isDSTShifted();

  /// NOTE(constructor): Same as moment constructor
  /// as of 2.7.0, use moment.min/max
  /*external Moment max([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, bool strict]);*/
  /// as of 2.7.0, use moment.min/max
  /*external Moment max([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, String language, bool strict]);*/
  external Moment max(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ format,
      dynamic /*bool|String*/ strict_language,
      bool strict]);

  /// NOTE(constructor): Same as moment constructor
  /// as of 2.7.0, use moment.min/max
  /*external Moment min([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, bool strict]);*/
  /// as of 2.7.0, use moment.min/max
  /*external Moment min([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, String language, bool strict]);*/
  external Moment min(
      [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
      dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ format,
      dynamic /*bool|String*/ strict_language,
      bool strict]);
  external num JS$get(
      String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'|'weekYear'|'weekYears'|'gg'|'isoWeekYear'|'isoWeekYears'|'GG'|'dayOfYear'|'dayOfYears'|'DDD'|'weekday'|'weekdays'|'e'|'isoWeekday'|'isoWeekdays'|'E'*/ unit);
  /*external Moment JS$set('year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'|'weekYear'|'weekYears'|'gg'|'isoWeekYear'|'isoWeekYears'|'GG'|'dayOfYear'|'dayOfYears'|'DDD'|'weekday'|'weekdays'|'e'|'isoWeekday'|'isoWeekdays'|'E' unit, num value);*/
  /*external Moment JS$set(MomentSetObject objectLiteral);*/
  external Moment JS$set(
      dynamic /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'|'weekYear'|'weekYears'|'gg'|'isoWeekYear'|'isoWeekYears'|'GG'|'dayOfYear'|'dayOfYears'|'DDD'|'weekday'|'weekdays'|'e'|'isoWeekday'|'isoWeekdays'|'E'|MomentSetObject*/ unit_objectLiteral,
      [num value]);
  external MomentObjectOutput toObject();
}

@JS("moment.version")
external String get version;
@JS("moment.version")
external set version(String v);
@JS("moment.fn")
external Moment get fn;
@JS("moment.fn")
external set fn(Moment v);

/// NOTE(constructor): Same as moment constructor
/*external Moment utc([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, bool strict]);*/
/*external Moment utc([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, String language, bool strict]);*/
@JS("moment.utc")
external Moment utc(
    [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
    dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ format,
    dynamic /*bool|String*/ strict_language,
    bool strict]);
@JS("moment.unix")
external Moment unix(num timestamp);
@JS("moment.invalid")
external Moment invalid([MomentParsingFlagsOpt flags]);
@JS("moment.isMoment")
external bool /*m is Moment*/ isMoment(dynamic m);
@JS("moment.isDate")
external bool /*m is DateTime*/ isDate(dynamic m);
@JS("moment.isDuration")
external bool /*d is Duration*/ isDuration(dynamic d);

/// in 2.8.0
/*external String lang([String language]);*/
/// in 2.8.0
/*external String lang([String language, Locale definition]);*/
@JS("moment.lang")
external String lang([String language, Locale definition]);
/*external String locale([String language]);*/
/*external String locale([List<String> language]);*/
/*external String locale([String language, LocaleSpecification|Null definition]);*/
@JS("moment.locale")
external String locale(
    [dynamic /*String|List<String>*/ language,
    dynamic /*LocaleSpecification|Null*/ definition]);
@JS("moment.localeData")
external Locale localeData([dynamic /*String|List<String>*/ key]);
@JS("moment.duration")
external Duration duration(
    [dynamic /*Duration|num|String|FromTo|DurationInputObject|Null*/ inp,
    String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'*/ unit]);

/// NOTE(constructor): Same as moment constructor
/*external Moment parseZone([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, bool strict]);*/
/*external Moment parseZone([Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null inp, String|MomentBuiltinFormat|List<String|MomentBuiltinFormat> format, String language, bool strict]);*/
@JS("moment.parseZone")
external Moment parseZone(
    [dynamic /*Moment|DateTime|String|num|List<num|String>|MomentInputObject|Null*/ inp,
    dynamic /*String|MomentBuiltinFormat|List<String|MomentBuiltinFormat>*/ format,
    dynamic /*bool|String*/ strict_language,
    bool strict]);
/*external List<String> months();*/
/*external String months(num index);*/
/*external List<String> months(String format);*/
/*external String months(String format, num index);*/
@JS("moment.months")
external dynamic /*List<String>|String*/ months(
    [dynamic /*num|String*/ index_format, num index]);
/*external List<String> monthsShort();*/
/*external String monthsShort(num index);*/
/*external List<String> monthsShort(String format);*/
/*external String monthsShort(String format, num index);*/
@JS("moment.monthsShort")
external dynamic /*List<String>|String*/ monthsShort(
    [dynamic /*num|String*/ index_format, num index]);
/*external List<String> weekdays();*/
/*external String weekdays(num index);*/
/*external List<String> weekdays(String format);*/
/*external String weekdays(String format, num index);*/
/*external List<String> weekdays(bool localeSorted);*/
/*external String weekdays(bool localeSorted, num index);*/
/*external List<String> weekdays(bool localeSorted, String format);*/
/*external String weekdays(bool localeSorted, String format, num index);*/
@JS("moment.weekdays")
external dynamic /*List<String>|String*/ weekdays(
    [dynamic /*num|String|bool*/ index_format_localeSorted,
    dynamic /*num|String*/ index_format,
    num index]);
/*external List<String> weekdaysShort();*/
/*external String weekdaysShort(num index);*/
/*external List<String> weekdaysShort(String format);*/
/*external String weekdaysShort(String format, num index);*/
/*external List<String> weekdaysShort(bool localeSorted);*/
/*external String weekdaysShort(bool localeSorted, num index);*/
/*external List<String> weekdaysShort(bool localeSorted, String format);*/
/*external String weekdaysShort(bool localeSorted, String format, num index);*/
@JS("moment.weekdaysShort")
external dynamic /*List<String>|String*/ weekdaysShort(
    [dynamic /*num|String|bool*/ index_format_localeSorted,
    dynamic /*num|String*/ index_format,
    num index]);
/*external List<String> weekdaysMin();*/
/*external String weekdaysMin(num index);*/
/*external List<String> weekdaysMin(String format);*/
/*external String weekdaysMin(String format, num index);*/
/*external List<String> weekdaysMin(bool localeSorted);*/
/*external String weekdaysMin(bool localeSorted, num index);*/
/*external List<String> weekdaysMin(bool localeSorted, String format);*/
/*external String weekdaysMin(bool localeSorted, String format, num index);*/
@JS("moment.weekdaysMin")
external dynamic /*List<String>|String*/ weekdaysMin(
    [dynamic /*num|String|bool*/ index_format_localeSorted,
    dynamic /*num|String*/ index_format,
    num index]);
/*external Moment min(List<Moment> moments);*/
/*external Moment min(
    [Moment moments1,
    Moment moments2,
    Moment moments3,
    Moment moments4,
    Moment moments5]);*/
@JS("moment.min")
external Moment min(List<Moment> moments);
/*external Moment max(List<Moment> moments);*/
/*external Moment max(
    [Moment moments1,
    Moment moments2,
    Moment moments3,
    Moment moments4,
    Moment moments5]);*/
@JS("moment.max")
external Moment max(List<Moment> moments);

/// Returns unix time in milliseconds. Overwrite for profit.
@JS("moment.now")
external num now();
@JS("moment.defineLocale")
external Locale defineLocale(
    String language, dynamic /*LocaleSpecification|Null*/ localeSpec);
@JS("moment.updateLocale")
external Locale updateLocale(
    String language, dynamic /*LocaleSpecification|Null*/ localeSpec);
@JS("moment.locales")
external List<String> locales();
@JS("moment.normalizeUnits")
external String normalizeUnits(
    String /*'year'|'years'|'y'|'month'|'months'|'M'|'week'|'weeks'|'w'|'day'|'days'|'d'|'hour'|'hours'|'h'|'minute'|'minutes'|'m'|'second'|'seconds'|'s'|'millisecond'|'milliseconds'|'ms'|'quarter'|'quarters'|'Q'|'isoWeek'|'isoWeeks'|'W'|'date'|'dates'|'D'|'weekYear'|'weekYears'|'gg'|'isoWeekYear'|'isoWeekYears'|'GG'|'dayOfYear'|'dayOfYears'|'DDD'|'weekday'|'weekdays'|'e'|'isoWeekday'|'isoWeekdays'|'E'*/ unit);
/*external num|bool relativeTimeThreshold(String threshold);*/
/*external bool relativeTimeThreshold(String threshold, num limit);*/
@JS("moment.relativeTimeThreshold")
external dynamic /*num|bool*/ relativeTimeThreshold(String threshold,
    [num limit]);
/*external bool relativeTimeRounding(num fn(num num));*/
/*external Func1<num, num> relativeTimeRounding();*/
@JS("moment.relativeTimeRounding")
external dynamic /*bool|Func1<num, num>*/ relativeTimeRounding(
    [num fn(num num)]);
@JS("moment.calendarFormat")
external String calendarFormat(Moment m, Moment now);

/// Constant used to enable explicit ISO_8601 format parsing.
@JS("moment.ISO_8601")
external MomentBuiltinFormat get ISO_8601;
@JS("moment.ISO_8601")
external set ISO_8601(MomentBuiltinFormat v);
@JS("moment.RFC_2822")
external MomentBuiltinFormat get RFC_2822;
@JS("moment.RFC_2822")
external set RFC_2822(MomentBuiltinFormat v);
@JS("moment.defaultFormat")
external String get defaultFormat;
@JS("moment.defaultFormat")
external set defaultFormat(String v);
@JS("moment.defaultFormatUtc")
external String get defaultFormatUtc;
@JS("moment.defaultFormatUtc")
external set defaultFormatUtc(String v);
// End module moment
/* WARNING: export assignment not yet supported. */
