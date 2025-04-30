package org.jsoup.parser;

import java.util.Locale;
import org.jsoup.helper.Validate;
/* loaded from: classes5.dex */
class CharacterReader {
    static final char EOF = 65535;
    private final char[] input;
    private final int length;
    private int pos = 0;
    private int mark = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharacterReader(String str) {
        Validate.notNull(str);
        char[] charArray = str.toCharArray();
        this.input = charArray;
        this.length = charArray.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void advance() {
        this.pos++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char consume() {
        char c4 = isEmpty() ? (char) 65535 : this.input[this.pos];
        this.pos++;
        return c4;
    }

    String consumeAsString() {
        char[] cArr = this.input;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return new String(cArr, i2, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeDigitSequence() {
        int i2;
        char c4;
        int i4 = this.pos;
        while (true) {
            i2 = this.pos;
            if (i2 >= this.length || (c4 = this.input[i2]) < '0' || c4 > '9') {
                break;
            }
            this.pos = i2 + 1;
        }
        return new String(this.input, i4, i2 - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeHexSequence() {
        int i2;
        char c4;
        int i4 = this.pos;
        while (true) {
            i2 = this.pos;
            if (i2 >= this.length || (((c4 = this.input[i2]) < '0' || c4 > '9') && ((c4 < 'A' || c4 > 'F') && (c4 < 'a' || c4 > 'f')))) {
                break;
            }
            this.pos = i2 + 1;
        }
        return new String(this.input, i4, i2 - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeLetterSequence() {
        int i2;
        char c4;
        int i4 = this.pos;
        while (true) {
            i2 = this.pos;
            if (i2 >= this.length || (((c4 = this.input[i2]) < 'A' || c4 > 'Z') && (c4 < 'a' || c4 > 'z'))) {
                break;
            }
            this.pos = i2 + 1;
        }
        return new String(this.input, i4, i2 - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeLetterThenDigitSequence() {
        char c4;
        int i2 = this.pos;
        while (true) {
            int i4 = this.pos;
            if (i4 >= this.length || (((c4 = this.input[i4]) < 'A' || c4 > 'Z') && (c4 < 'a' || c4 > 'z'))) {
                break;
            }
            this.pos = i4 + 1;
        }
        while (!isEmpty()) {
            char[] cArr = this.input;
            int i5 = this.pos;
            char c5 = cArr[i5];
            if (c5 < '0' || c5 > '9') {
                break;
            }
            this.pos = i5 + 1;
        }
        return new String(this.input, i2, this.pos - i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeTo(char c4) {
        int nextIndexOf = nextIndexOf(c4);
        if (nextIndexOf != -1) {
            String str = new String(this.input, this.pos, nextIndexOf);
            this.pos += nextIndexOf;
            return str;
        }
        return consumeToEnd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeToAny(char... cArr) {
        int i2 = this.pos;
        loop0: while (this.pos < this.length) {
            for (char c4 : cArr) {
                if (this.input[this.pos] == c4) {
                    break loop0;
                }
            }
            this.pos++;
        }
        int i4 = this.pos;
        return i4 > i2 ? new String(this.input, i2, i4 - i2) : "";
    }

    String consumeToEnd() {
        char[] cArr = this.input;
        int i2 = this.pos;
        String str = new String(cArr, i2, this.length - i2);
        this.pos = this.length;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsIgnoreCase(String str) {
        Locale locale = Locale.ENGLISH;
        return nextIndexOf(str.toLowerCase(locale)) > -1 || nextIndexOf(str.toUpperCase(locale)) > -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char current() {
        if (isEmpty()) {
            return (char) 65535;
        }
        return this.input[this.pos];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEmpty() {
        return this.pos >= this.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void mark() {
        this.mark = this.pos;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matchConsume(String str) {
        if (matches(str)) {
            this.pos += str.length();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matchConsumeIgnoreCase(String str) {
        if (matchesIgnoreCase(str)) {
            this.pos += str.length();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matches(char c4) {
        return !isEmpty() && this.input[this.pos] == c4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        char c4 = this.input[this.pos];
        for (char c5 : cArr) {
            if (c5 == c4) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matchesDigit() {
        char c4;
        return !isEmpty() && (c4 = this.input[this.pos]) >= '0' && c4 <= '9';
    }

    boolean matchesIgnoreCase(String str) {
        int length = str.length();
        if (length > this.length - this.pos) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (Character.toUpperCase(str.charAt(i2)) != Character.toUpperCase(this.input[this.pos + i2])) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c4 = this.input[this.pos];
        return (c4 >= 'A' && c4 <= 'Z') || (c4 >= 'a' && c4 <= 'z');
    }

    int nextIndexOf(char c4) {
        for (int i2 = this.pos; i2 < this.length; i2++) {
            if (c4 == this.input[i2]) {
                return i2 - this.pos;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int pos() {
        return this.pos;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rewindToMark() {
        this.pos = this.mark;
    }

    public String toString() {
        char[] cArr = this.input;
        int i2 = this.pos;
        return new String(cArr, i2, this.length - i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unconsume() {
        this.pos--;
    }

    boolean matches(String str) {
        int length = str.length();
        if (length > this.length - this.pos) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != this.input[this.pos + i2]) {
                return false;
            }
        }
        return true;
    }

    int nextIndexOf(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        int i2 = this.pos;
        while (i2 < this.length) {
            if (charAt != this.input[i2]) {
                do {
                    i2++;
                    if (i2 >= this.length) {
                        break;
                    }
                } while (charAt != this.input[i2]);
            }
            if (i2 < this.length) {
                int i4 = i2 + 1;
                int length = (charSequence.length() + i4) - 1;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.input[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i2 - this.pos;
                }
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String consumeTo(String str) {
        int nextIndexOf = nextIndexOf(str);
        if (nextIndexOf != -1) {
            String str2 = new String(this.input, this.pos, nextIndexOf);
            this.pos += nextIndexOf;
            return str2;
        }
        return consumeToEnd();
    }
}
