package io.netty.handler.codec.http;

import com.facebook.common.statfs.StatFsHelper;
import io.netty.util.AsciiString;
/* loaded from: classes5.dex */
public enum HttpStatusClass {
    INFORMATIONAL(100, 200, "Informational"),
    SUCCESS(200, 300, "Success"),
    REDIRECTION(300, StatFsHelper.f11741h, "Redirection"),
    CLIENT_ERROR(StatFsHelper.f11741h, 500, "Client Error"),
    SERVER_ERROR(500, 600, "Server Error"),
    UNKNOWN(0, 0, "Unknown Status") { // from class: io.netty.handler.codec.http.HttpStatusClass.1
        @Override // io.netty.handler.codec.http.HttpStatusClass
        public boolean contains(int i2) {
            return i2 < 100 || i2 >= 600;
        }
    };
    
    private final AsciiString defaultReasonPhrase;
    private final int max;
    private final int min;

    private static int digit(char c4) {
        return c4 - '0';
    }

    private static boolean isDigit(char c4) {
        return c4 >= '0' && c4 <= '9';
    }

    public boolean contains(int i2) {
        return i2 >= this.min && i2 < this.max;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsciiString defaultReasonPhrase() {
        return this.defaultReasonPhrase;
    }

    HttpStatusClass(int i2, int i4, String str) {
        this.min = i2;
        this.max = i4;
        this.defaultReasonPhrase = AsciiString.cached(str);
    }

    public static HttpStatusClass valueOf(int i2) {
        HttpStatusClass httpStatusClass = INFORMATIONAL;
        if (httpStatusClass.contains(i2)) {
            return httpStatusClass;
        }
        HttpStatusClass httpStatusClass2 = SUCCESS;
        if (httpStatusClass2.contains(i2)) {
            return httpStatusClass2;
        }
        HttpStatusClass httpStatusClass3 = REDIRECTION;
        if (httpStatusClass3.contains(i2)) {
            return httpStatusClass3;
        }
        HttpStatusClass httpStatusClass4 = CLIENT_ERROR;
        if (httpStatusClass4.contains(i2)) {
            return httpStatusClass4;
        }
        HttpStatusClass httpStatusClass5 = SERVER_ERROR;
        return httpStatusClass5.contains(i2) ? httpStatusClass5 : UNKNOWN;
    }

    public static HttpStatusClass valueOf(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() == 3) {
            char charAt = charSequence.charAt(0);
            return (isDigit(charAt) && isDigit(charSequence.charAt(1)) && isDigit(charSequence.charAt(2))) ? valueOf(digit(charAt) * 100) : UNKNOWN;
        }
        return UNKNOWN;
    }
}
