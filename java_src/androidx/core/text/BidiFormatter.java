package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public final class BidiFormatter {

    /* renamed from: d  reason: collision with root package name */
    static final TextDirectionHeuristicCompat f4597d;

    /* renamed from: e  reason: collision with root package name */
    private static final char f4598e = 8234;

    /* renamed from: f  reason: collision with root package name */
    private static final char f4599f = 8235;

    /* renamed from: g  reason: collision with root package name */
    private static final char f4600g = 8236;

    /* renamed from: h  reason: collision with root package name */
    private static final char f4601h = 8206;

    /* renamed from: i  reason: collision with root package name */
    private static final char f4602i = 8207;

    /* renamed from: j  reason: collision with root package name */
    private static final String f4603j;

    /* renamed from: k  reason: collision with root package name */
    private static final String f4604k;

    /* renamed from: l  reason: collision with root package name */
    private static final String f4605l = "";

    /* renamed from: m  reason: collision with root package name */
    private static final int f4606m = 2;

    /* renamed from: n  reason: collision with root package name */
    private static final int f4607n = 2;

    /* renamed from: o  reason: collision with root package name */
    static final BidiFormatter f4608o;

    /* renamed from: p  reason: collision with root package name */
    static final BidiFormatter f4609p;

    /* renamed from: q  reason: collision with root package name */
    private static final int f4610q = -1;

    /* renamed from: r  reason: collision with root package name */
    private static final int f4611r = 0;

    /* renamed from: s  reason: collision with root package name */
    private static final int f4612s = 1;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4613a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4614b;

    /* renamed from: c  reason: collision with root package name */
    private final TextDirectionHeuristicCompat f4615c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DirectionalityEstimator {

        /* renamed from: f  reason: collision with root package name */
        private static final int f4619f = 1792;

        /* renamed from: g  reason: collision with root package name */
        private static final byte[] f4620g = new byte[f4619f];

        /* renamed from: a  reason: collision with root package name */
        private final CharSequence f4621a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f4622b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4623c;

        /* renamed from: d  reason: collision with root package name */
        private int f4624d;

        /* renamed from: e  reason: collision with root package name */
        private char f4625e;

        static {
            for (int i2 = 0; i2 < f4619f; i2++) {
                f4620g[i2] = Character.getDirectionality(i2);
            }
        }

        DirectionalityEstimator(CharSequence charSequence, boolean z3) {
            this.f4621a = charSequence;
            this.f4622b = z3;
            this.f4623c = charSequence.length();
        }

        private static byte c(char c4) {
            return c4 < f4619f ? f4620g[c4] : Character.getDirectionality(c4);
        }

        private byte f() {
            char charAt;
            int i2 = this.f4624d;
            do {
                int i4 = this.f4624d;
                if (i4 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f4621a;
                int i5 = i4 - 1;
                this.f4624d = i5;
                charAt = charSequence.charAt(i5);
                this.f4625e = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f4624d = i2;
            this.f4625e = ';';
            return (byte) 13;
        }

        private byte g() {
            char charAt;
            do {
                int i2 = this.f4624d;
                if (i2 >= this.f4623c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f4621a;
                this.f4624d = i2 + 1;
                charAt = charSequence.charAt(i2);
                this.f4625e = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        private byte h() {
            char charAt;
            int i2 = this.f4624d;
            while (true) {
                int i4 = this.f4624d;
                if (i4 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f4621a;
                int i5 = i4 - 1;
                this.f4624d = i5;
                char charAt2 = charSequence.charAt(i5);
                this.f4625e = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                } else if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i6 = this.f4624d;
                        if (i6 > 0) {
                            CharSequence charSequence2 = this.f4621a;
                            int i7 = i6 - 1;
                            this.f4624d = i7;
                            charAt = charSequence2.charAt(i7);
                            this.f4625e = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.f4624d = i2;
            this.f4625e = Typography.greater;
            return (byte) 13;
        }

        private byte i() {
            char charAt;
            int i2 = this.f4624d;
            while (true) {
                int i4 = this.f4624d;
                if (i4 < this.f4623c) {
                    CharSequence charSequence = this.f4621a;
                    this.f4624d = i4 + 1;
                    char charAt2 = charSequence.charAt(i4);
                    this.f4625e = charAt2;
                    if (charAt2 == '>') {
                        return (byte) 12;
                    }
                    if (charAt2 == '\"' || charAt2 == '\'') {
                        do {
                            int i5 = this.f4624d;
                            if (i5 < this.f4623c) {
                                CharSequence charSequence2 = this.f4621a;
                                this.f4624d = i5 + 1;
                                charAt = charSequence2.charAt(i5);
                                this.f4625e = charAt;
                            }
                        } while (charAt != charAt2);
                    }
                } else {
                    this.f4624d = i2;
                    this.f4625e = Typography.less;
                    return (byte) 13;
                }
            }
        }

        byte a() {
            char charAt = this.f4621a.charAt(this.f4624d - 1);
            this.f4625e = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f4621a, this.f4624d);
                this.f4624d -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f4624d--;
            byte c4 = c(this.f4625e);
            if (this.f4622b) {
                char c5 = this.f4625e;
                if (c5 == '>') {
                    return h();
                }
                return c5 == ';' ? f() : c4;
            }
            return c4;
        }

        byte b() {
            char charAt = this.f4621a.charAt(this.f4624d);
            this.f4625e = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f4621a, this.f4624d);
                this.f4624d += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f4624d++;
            byte c4 = c(this.f4625e);
            if (this.f4622b) {
                char c5 = this.f4625e;
                if (c5 == '<') {
                    return i();
                }
                return c5 == '&' ? g() : c4;
            }
            return c4;
        }

        int d() {
            this.f4624d = 0;
            int i2 = 0;
            int i4 = 0;
            int i5 = 0;
            while (this.f4624d < this.f4623c && i2 == 0) {
                byte b4 = b();
                if (b4 != 0) {
                    if (b4 == 1 || b4 == 2) {
                        if (i5 == 0) {
                            return 1;
                        }
                    } else if (b4 != 9) {
                        switch (b4) {
                            case 14:
                            case 15:
                                i5++;
                                i4 = -1;
                                break;
                            case 16:
                            case 17:
                                i5++;
                                i4 = 1;
                                break;
                            case 18:
                                i5--;
                                i4 = 0;
                                break;
                        }
                    }
                } else if (i5 == 0) {
                    return -1;
                }
                i2 = i5;
            }
            if (i2 == 0) {
                return 0;
            }
            if (i4 != 0) {
                return i4;
            }
            while (this.f4624d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i2 == i5) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i2 == i5) {
                            return 1;
                        }
                        break;
                    case 18:
                        i5++;
                        continue;
                }
                i5--;
            }
            return 0;
        }

        int e() {
            this.f4624d = this.f4623c;
            int i2 = 0;
            int i4 = 0;
            while (this.f4624d > 0) {
                byte a4 = a();
                if (a4 != 0) {
                    if (a4 == 1 || a4 == 2) {
                        if (i2 == 0) {
                            return 1;
                        }
                        if (i4 == 0) {
                            i4 = i2;
                        }
                    } else if (a4 != 9) {
                        switch (a4) {
                            case 14:
                            case 15:
                                if (i4 == i2) {
                                    return -1;
                                }
                                i2--;
                                break;
                            case 16:
                            case 17:
                                if (i4 == i2) {
                                    return 1;
                                }
                                i2--;
                                break;
                            case 18:
                                i2++;
                                break;
                            default:
                                if (i4 != 0) {
                                    break;
                                } else {
                                    i4 = i2;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else if (i2 == 0) {
                    return -1;
                } else {
                    if (i4 == 0) {
                        i4 = i2;
                    }
                }
            }
            return 0;
        }
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        f4597d = textDirectionHeuristicCompat;
        f4603j = Character.toString(f4601h);
        f4604k = Character.toString(f4602i);
        f4608o = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        f4609p = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    BidiFormatter(boolean z3, int i2, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.f4613a = z3;
        this.f4614b = i2;
        this.f4615c = textDirectionHeuristicCompat;
    }

    private static int a(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).e();
    }

    static boolean c(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    private String d(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        if (this.f4613a || !(isRtl || b(charSequence) == 1)) {
            return this.f4613a ? (!isRtl || b(charSequence) == -1) ? f4604k : "" : "";
        }
        return f4603j;
    }

    private String e(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        if (this.f4613a || !(isRtl || a(charSequence) == 1)) {
            return this.f4613a ? (!isRtl || a(charSequence) == -1) ? f4604k : "" : "";
        }
        return f4603j;
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    public boolean getStereoReset() {
        return (this.f4614b & 2) != 0;
    }

    public boolean isRtl(String str) {
        return isRtl((CharSequence) str);
    }

    public boolean isRtlContext() {
        return this.f4613a;
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z3) {
        if (str == null) {
            return null;
        }
        return unicodeWrap((CharSequence) str, textDirectionHeuristicCompat, z3).toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4616a;

        /* renamed from: b  reason: collision with root package name */
        private int f4617b;

        /* renamed from: c  reason: collision with root package name */
        private TextDirectionHeuristicCompat f4618c;

        public Builder() {
            b(BidiFormatter.c(Locale.getDefault()));
        }

        private static BidiFormatter a(boolean z3) {
            return z3 ? BidiFormatter.f4609p : BidiFormatter.f4608o;
        }

        private void b(boolean z3) {
            this.f4616a = z3;
            this.f4618c = BidiFormatter.f4597d;
            this.f4617b = 2;
        }

        public BidiFormatter build() {
            if (this.f4617b == 2 && this.f4618c == BidiFormatter.f4597d) {
                return a(this.f4616a);
            }
            return new BidiFormatter(this.f4616a, this.f4617b, this.f4618c);
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.f4618c = textDirectionHeuristicCompat;
            return this;
        }

        public Builder stereoReset(boolean z3) {
            if (z3) {
                this.f4617b |= 2;
            } else {
                this.f4617b &= -3;
            }
            return this;
        }

        public Builder(boolean z3) {
            b(z3);
        }

        public Builder(Locale locale) {
            b(BidiFormatter.c(locale));
        }
    }

    public static BidiFormatter getInstance(boolean z3) {
        return new Builder(z3).build();
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.f4615c.isRtl(charSequence, 0, charSequence.length());
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z3) {
        if (charSequence == null) {
            return null;
        }
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (getStereoReset() && z3) {
            spannableStringBuilder.append((CharSequence) e(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (isRtl != this.f4613a) {
            spannableStringBuilder.append(isRtl ? f4599f : f4598e);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(f4600g);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z3) {
            spannableStringBuilder.append((CharSequence) d(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return spannableStringBuilder;
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(charSequence, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, boolean z3) {
        return unicodeWrap(str, this.f4615c, z3);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, boolean z3) {
        return unicodeWrap(charSequence, this.f4615c, z3);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.f4615c, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence) {
        return unicodeWrap(charSequence, this.f4615c, true);
    }
}
