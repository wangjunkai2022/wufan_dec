package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.io.NumberInput;
import com.ss.android.download.api.constant.BaseConstants;
import external.org.apache.commons.lang3.d;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class StdDateFormat extends DateFormat {
    protected static final String[] ALL_FORMATS;
    protected static final Calendar CALENDAR;
    protected static final DateFormat DATE_FORMAT_RFC1123;
    public static final String DATE_FORMAT_STR_ISO8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSX";
    protected static final String DATE_FORMAT_STR_PLAIN = "yyyy-MM-dd";
    protected static final String DATE_FORMAT_STR_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
    protected static final Locale DEFAULT_LOCALE;
    protected static final TimeZone DEFAULT_TIMEZONE;
    protected static final Pattern PATTERN_ISO8601;
    public static final StdDateFormat instance;
    private transient Calendar _calendar;
    private transient DateFormat _formatRFC1123;
    protected Boolean _lenient;
    protected final Locale _locale;
    protected transient TimeZone _timezone;
    private boolean _tzSerializedWithColon;
    protected static final String PATTERN_PLAIN_STR = "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d";
    protected static final Pattern PATTERN_PLAIN = Pattern.compile(PATTERN_PLAIN_STR);

    static {
        try {
            PATTERN_ISO8601 = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?");
            ALL_FORMATS = new String[]{DATE_FORMAT_STR_ISO8601, "yyyy-MM-dd'T'HH:mm:ss.SSS", "EEE, dd MMM yyyy HH:mm:ss zzz", DATE_FORMAT_STR_PLAIN};
            TimeZone timeZone = TimeZone.getTimeZone("UTC");
            DEFAULT_TIMEZONE = timeZone;
            Locale locale = Locale.US;
            DEFAULT_LOCALE = locale;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", locale);
            DATE_FORMAT_RFC1123 = simpleDateFormat;
            simpleDateFormat.setTimeZone(timeZone);
            instance = new StdDateFormat();
            CALENDAR = new GregorianCalendar(timeZone, locale);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public StdDateFormat() {
        this._tzSerializedWithColon = true;
        this._locale = DEFAULT_LOCALE;
    }

    private static final DateFormat _cloneFormat(DateFormat dateFormat, String str, TimeZone timeZone, Locale locale, Boolean bool) {
        DateFormat dateFormat2;
        if (!locale.equals(DEFAULT_LOCALE)) {
            dateFormat2 = new SimpleDateFormat(str, locale);
            if (timeZone == null) {
                timeZone = DEFAULT_TIMEZONE;
            }
            dateFormat2.setTimeZone(timeZone);
        } else {
            dateFormat2 = (DateFormat) dateFormat.clone();
            if (timeZone != null) {
                dateFormat2.setTimeZone(timeZone);
            }
        }
        if (bool != null) {
            dateFormat2.setLenient(bool.booleanValue());
        }
        return dateFormat2;
    }

    protected static <T> boolean _equals(T t3, T t4) {
        if (t3 == t4) {
            return true;
        }
        return t3 != null && t3.equals(t4);
    }

    private static int _parse2D(String str, int i2) {
        return ((str.charAt(i2) - '0') * 10) + (str.charAt(i2 + 1) - '0');
    }

    private static int _parse4D(String str, int i2) {
        return ((str.charAt(i2) - '0') * 1000) + ((str.charAt(i2 + 1) - '0') * 100) + ((str.charAt(i2 + 2) - '0') * 10) + (str.charAt(i2 + 3) - '0');
    }

    private Date _parseDateFromLong(String str, ParsePosition parsePosition) throws ParseException {
        try {
            return new Date(NumberInput.parseLong(str));
        } catch (NumberFormatException unused) {
            throw new ParseException(String.format("Timestamp value %s out of 64-bit value range", str), parsePosition.getErrorIndex());
        }
    }

    public static TimeZone getDefaultTimeZone() {
        return DEFAULT_TIMEZONE;
    }

    @Deprecated
    public static DateFormat getISO8601Format(TimeZone timeZone, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATE_FORMAT_STR_ISO8601, locale);
        simpleDateFormat.setTimeZone(DEFAULT_TIMEZONE);
        return simpleDateFormat;
    }

    @Deprecated
    public static DateFormat getRFC1123Format(TimeZone timeZone, Locale locale) {
        return _cloneFormat(DATE_FORMAT_RFC1123, "EEE, dd MMM yyyy HH:mm:ss zzz", timeZone, locale, null);
    }

    private static void pad2(StringBuffer stringBuffer, int i2) {
        int i4 = i2 / 10;
        if (i4 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i4 + 48));
            i2 -= i4 * 10;
        }
        stringBuffer.append((char) (i2 + 48));
    }

    private static void pad3(StringBuffer stringBuffer, int i2) {
        int i4 = i2 / 100;
        if (i4 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i4 + 48));
            i2 -= i4 * 100;
        }
        pad2(stringBuffer, i2);
    }

    private static void pad4(StringBuffer stringBuffer, int i2) {
        int i4 = i2 / 100;
        if (i4 == 0) {
            stringBuffer.append('0');
            stringBuffer.append('0');
        } else {
            if (i4 > 99) {
                stringBuffer.append(i4);
            } else {
                pad2(stringBuffer, i4);
            }
            i2 -= i4 * 100;
        }
        pad2(stringBuffer, i2);
    }

    protected void _clearFormats() {
        this._formatRFC1123 = null;
    }

    protected void _format(TimeZone timeZone, Locale locale, Date date, StringBuffer stringBuffer) {
        Calendar _getCalendar = _getCalendar(timeZone);
        _getCalendar.setTime(date);
        int i2 = _getCalendar.get(1);
        if (_getCalendar.get(0) == 0) {
            _formatBCEYear(stringBuffer, i2);
        } else {
            if (i2 > 9999) {
                stringBuffer.append('+');
            }
            pad4(stringBuffer, i2);
        }
        stringBuffer.append('-');
        pad2(stringBuffer, _getCalendar.get(2) + 1);
        stringBuffer.append('-');
        pad2(stringBuffer, _getCalendar.get(5));
        stringBuffer.append('T');
        pad2(stringBuffer, _getCalendar.get(11));
        stringBuffer.append(':');
        pad2(stringBuffer, _getCalendar.get(12));
        stringBuffer.append(':');
        pad2(stringBuffer, _getCalendar.get(13));
        stringBuffer.append(d.f65364a);
        pad3(stringBuffer, _getCalendar.get(14));
        int offset = timeZone.getOffset(_getCalendar.getTimeInMillis());
        if (offset != 0) {
            int i4 = offset / BaseConstants.Time.MINUTE;
            int abs = Math.abs(i4 / 60);
            int abs2 = Math.abs(i4 % 60);
            stringBuffer.append(offset < 0 ? '-' : '+');
            pad2(stringBuffer, abs);
            if (this._tzSerializedWithColon) {
                stringBuffer.append(':');
            }
            pad2(stringBuffer, abs2);
        } else if (this._tzSerializedWithColon) {
            stringBuffer.append("+00:00");
        } else {
            stringBuffer.append("+0000");
        }
    }

    protected void _formatBCEYear(StringBuffer stringBuffer, int i2) {
        if (i2 == 1) {
            stringBuffer.append("+0000");
            return;
        }
        stringBuffer.append('-');
        pad4(stringBuffer, i2 - 1);
    }

    protected Calendar _getCalendar(TimeZone timeZone) {
        Calendar calendar = this._calendar;
        if (calendar == null) {
            calendar = (Calendar) CALENDAR.clone();
            this._calendar = calendar;
        }
        if (!calendar.getTimeZone().equals(timeZone)) {
            calendar.setTimeZone(timeZone);
        }
        calendar.setLenient(isLenient());
        return calendar;
    }

    protected Date _parseAsISO8601(String str, ParsePosition parsePosition) throws IllegalArgumentException, ParseException {
        char c4;
        String str2;
        int length = str.length();
        TimeZone timeZone = DEFAULT_TIMEZONE;
        if (this._timezone != null && 'Z' != str.charAt(length - 1)) {
            timeZone = this._timezone;
        }
        Calendar _getCalendar = _getCalendar(timeZone);
        _getCalendar.clear();
        int i2 = 0;
        if (length <= 10) {
            if (PATTERN_PLAIN.matcher(str).matches()) {
                _getCalendar.set(_parse4D(str, 0), _parse2D(str, 5) - 1, _parse2D(str, 8), 0, 0, 0);
                _getCalendar.set(14, 0);
                return _getCalendar.getTime();
            }
            str2 = DATE_FORMAT_STR_PLAIN;
            c4 = 1;
        } else {
            Matcher matcher = PATTERN_ISO8601.matcher(str);
            if (matcher.matches()) {
                int start = matcher.start(2);
                int end = matcher.end(2);
                int i4 = end - start;
                if (i4 > 1) {
                    int _parse2D = _parse2D(str, start + 1) * 3600;
                    if (i4 >= 5) {
                        _parse2D += _parse2D(str, end - 2) * 60;
                    }
                    _getCalendar.set(15, str.charAt(start) == '-' ? _parse2D * (-1000) : _parse2D * 1000);
                    _getCalendar.set(16, 0);
                }
                _getCalendar.set(_parse4D(str, 0), _parse2D(str, 5) - 1, _parse2D(str, 8), _parse2D(str, 11), _parse2D(str, 14), (length <= 16 || str.charAt(16) != ':') ? 0 : _parse2D(str, 17));
                int start2 = matcher.start(1) + 1;
                int end2 = matcher.end(1);
                if (start2 >= end2) {
                    _getCalendar.set(14, 0);
                } else {
                    int i5 = end2 - start2;
                    if (i5 != 0) {
                        if (i5 != 1) {
                            if (i5 != 2) {
                                if (i5 != 3 && i5 > 9) {
                                    throw new ParseException(String.format("Cannot parse date \"%s\": invalid fractional seconds '%s'; can use at most 9 digits", str, matcher.group(1).substring(1)), start2);
                                }
                                i2 = 0 + (str.charAt(start2 + 2) - '0');
                            }
                            i2 += (str.charAt(start2 + 1) - '0') * 10;
                        }
                        i2 += (str.charAt(start2) - '0') * 100;
                    }
                    _getCalendar.set(14, i2);
                }
                return _getCalendar.getTime();
            }
            c4 = 1;
            str2 = DATE_FORMAT_STR_ISO8601;
        }
        Object[] objArr = new Object[3];
        objArr[0] = str;
        objArr[c4] = str2;
        objArr[2] = this._lenient;
        throw new ParseException(String.format("Cannot parse date \"%s\": while it seems to fit format '%s', parsing fails (leniency? %s)", objArr), 0);
    }

    protected Date _parseDate(String str, ParsePosition parsePosition) throws ParseException {
        if (looksLikeISO8601(str)) {
            return parseAsISO8601(str, parsePosition);
        }
        int length = str.length();
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            char charAt = str.charAt(length);
            if (charAt < '0' || charAt > '9') {
                if (length > 0 || charAt != '-') {
                    break;
                }
            }
        }
        if (length < 0 && (str.charAt(0) == '-' || NumberInput.inLongRange(str, false))) {
            return _parseDateFromLong(str, parsePosition);
        }
        return parseAsRFC1123(str, parsePosition);
    }

    @Override // java.text.DateFormat
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        TimeZone timeZone = this._timezone;
        if (timeZone == null) {
            timeZone = DEFAULT_TIMEZONE;
        }
        _format(timeZone, this._locale, date, stringBuffer);
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public TimeZone getTimeZone() {
        return this._timezone;
    }

    @Override // java.text.DateFormat
    public int hashCode() {
        return System.identityHashCode(this);
    }

    public boolean isColonIncludedInTimeZone() {
        return this._tzSerializedWithColon;
    }

    @Override // java.text.DateFormat
    public boolean isLenient() {
        Boolean bool = this._lenient;
        return bool == null || bool.booleanValue();
    }

    protected boolean looksLikeISO8601(String str) {
        return str.length() >= 7 && Character.isDigit(str.charAt(0)) && Character.isDigit(str.charAt(3)) && str.charAt(4) == '-' && Character.isDigit(str.charAt(5));
    }

    @Override // java.text.DateFormat
    public Date parse(String str) throws ParseException {
        String[] strArr;
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date _parseDate = _parseDate(trim, parsePosition);
        if (_parseDate != null) {
            return _parseDate;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : ALL_FORMATS) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        throw new ParseException(String.format("Cannot parse date \"%s\": not compatible with any of standard forms (%s)", trim, sb.toString()), parsePosition.getErrorIndex());
    }

    protected Date parseAsISO8601(String str, ParsePosition parsePosition) throws ParseException {
        try {
            return _parseAsISO8601(str, parsePosition);
        } catch (IllegalArgumentException e4) {
            throw new ParseException(String.format("Cannot parse date \"%s\", problem: %s", str, e4.getMessage()), parsePosition.getErrorIndex());
        }
    }

    protected Date parseAsRFC1123(String str, ParsePosition parsePosition) {
        if (this._formatRFC1123 == null) {
            this._formatRFC1123 = _cloneFormat(DATE_FORMAT_RFC1123, "EEE, dd MMM yyyy HH:mm:ss zzz", this._timezone, this._locale, this._lenient);
        }
        return this._formatRFC1123.parse(str, parsePosition);
    }

    @Override // java.text.DateFormat
    public void setLenient(boolean z3) {
        Boolean valueOf = Boolean.valueOf(z3);
        if (_equals(valueOf, this._lenient)) {
            return;
        }
        this._lenient = valueOf;
        _clearFormats();
    }

    @Override // java.text.DateFormat
    public void setTimeZone(TimeZone timeZone) {
        if (timeZone.equals(this._timezone)) {
            return;
        }
        _clearFormats();
        this._timezone = timeZone;
    }

    public String toPattern() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("[one of: '");
        sb.append(DATE_FORMAT_STR_ISO8601);
        sb.append("', '");
        sb.append("EEE, dd MMM yyyy HH:mm:ss zzz");
        sb.append("' (");
        sb.append(Boolean.FALSE.equals(this._lenient) ? "strict" : "lenient");
        sb.append(")]");
        return sb.toString();
    }

    public String toString() {
        return String.format("DateFormat %s: (timezone: %s, locale: %s, lenient: %s)", getClass().getName(), this._timezone, this._locale, this._lenient);
    }

    public StdDateFormat withColonInTimeZone(boolean z3) {
        return this._tzSerializedWithColon == z3 ? this : new StdDateFormat(this._timezone, this._locale, this._lenient, z3);
    }

    public StdDateFormat withLenient(Boolean bool) {
        return _equals(bool, this._lenient) ? this : new StdDateFormat(this._timezone, this._locale, bool, this._tzSerializedWithColon);
    }

    public StdDateFormat withLocale(Locale locale) {
        return locale.equals(this._locale) ? this : new StdDateFormat(this._timezone, locale, this._lenient, this._tzSerializedWithColon);
    }

    public StdDateFormat withTimeZone(TimeZone timeZone) {
        if (timeZone == null) {
            timeZone = DEFAULT_TIMEZONE;
        }
        TimeZone timeZone2 = this._timezone;
        return (timeZone == timeZone2 || timeZone.equals(timeZone2)) ? this : new StdDateFormat(timeZone, this._locale, this._lenient, this._tzSerializedWithColon);
    }

    @Override // java.text.DateFormat, java.text.Format
    public StdDateFormat clone() {
        return new StdDateFormat(this._timezone, this._locale, this._lenient, this._tzSerializedWithColon);
    }

    @Deprecated
    public StdDateFormat(TimeZone timeZone, Locale locale) {
        this._tzSerializedWithColon = true;
        this._timezone = timeZone;
        this._locale = locale;
    }

    protected StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool) {
        this(timeZone, locale, bool, false);
    }

    protected StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool, boolean z3) {
        this._tzSerializedWithColon = true;
        this._timezone = timeZone;
        this._locale = locale;
        this._lenient = bool;
        this._tzSerializedWithColon = z3;
    }

    @Override // java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        try {
            return _parseDate(str, parsePosition);
        } catch (ParseException unused) {
            return null;
        }
    }
}
