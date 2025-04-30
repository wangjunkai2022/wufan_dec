package androidx.core.text;

import java.nio.CharBuffer;
import java.util.Locale;
/* loaded from: classes.dex */
public final class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR = new TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat RTL = new TextDirectionHeuristicInternal(null, true);

    /* renamed from: a  reason: collision with root package name */
    private static final int f4647a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final int f4648b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f4649c = 2;

    /* loaded from: classes.dex */
    private static class AnyStrong implements TextDirectionAlgorithm {

        /* renamed from: b  reason: collision with root package name */
        static final AnyStrong f4650b = new AnyStrong(true);

        /* renamed from: a  reason: collision with root package name */
        private final boolean f4651a;

        private AnyStrong(boolean z3) {
            this.f4651a = z3;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i2, int i4) {
            int i5 = i4 + i2;
            boolean z3 = false;
            while (i2 < i5) {
                int a4 = TextDirectionHeuristicsCompat.a(Character.getDirectionality(charSequence.charAt(i2)));
                if (a4 != 0) {
                    if (a4 != 1) {
                        continue;
                        i2++;
                    } else if (!this.f4651a) {
                        return 1;
                    }
                } else if (this.f4651a) {
                    return 0;
                }
                z3 = true;
                i2++;
            }
            if (z3) {
                return this.f4651a ? 1 : 0;
            }
            return 2;
        }
    }

    /* loaded from: classes.dex */
    private static class FirstStrong implements TextDirectionAlgorithm {

        /* renamed from: a  reason: collision with root package name */
        static final FirstStrong f4652a = new FirstStrong();

        private FirstStrong() {
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i2, int i4) {
            int i5 = i4 + i2;
            int i6 = 2;
            while (i2 < i5 && i6 == 2) {
                i6 = TextDirectionHeuristicsCompat.b(Character.getDirectionality(charSequence.charAt(i2)));
                i2++;
            }
            return i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface TextDirectionAlgorithm {
        int checkRtl(CharSequence charSequence, int i2, int i4);
    }

    /* loaded from: classes.dex */
    private static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {

        /* renamed from: a  reason: collision with root package name */
        private final TextDirectionAlgorithm f4653a;

        TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.f4653a = textDirectionAlgorithm;
        }

        private boolean b(CharSequence charSequence, int i2, int i4) {
            int checkRtl = this.f4653a.checkRtl(charSequence, i2, i4);
            if (checkRtl != 0) {
                if (checkRtl != 1) {
                    return a();
                }
                return false;
            }
            return true;
        }

        protected abstract boolean a();

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(char[] cArr, int i2, int i4) {
            return isRtl(CharBuffer.wrap(cArr), i2, i4);
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(CharSequence charSequence, int i2, int i4) {
            if (charSequence != null && i2 >= 0 && i4 >= 0 && charSequence.length() - i4 >= i2) {
                if (this.f4653a == null) {
                    return a();
                }
                return b(charSequence, i2, i4);
            }
            throw new IllegalArgumentException();
        }
    }

    /* loaded from: classes.dex */
    private static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {

        /* renamed from: b  reason: collision with root package name */
        private final boolean f4654b;

        TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z3) {
            super(textDirectionAlgorithm);
            this.f4654b = z3;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean a() {
            return this.f4654b;
        }
    }

    /* loaded from: classes.dex */
    private static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {

        /* renamed from: b  reason: collision with root package name */
        static final TextDirectionHeuristicLocale f4655b = new TextDirectionHeuristicLocale();

        TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean a() {
            return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }

    static {
        FirstStrong firstStrong = FirstStrong.f4652a;
        FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(firstStrong, false);
        FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(firstStrong, true);
        ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.f4650b, false);
        LOCALE = TextDirectionHeuristicLocale.f4655b;
    }

    private TextDirectionHeuristicsCompat() {
    }

    static int a(int i2) {
        if (i2 != 0) {
            return (i2 == 1 || i2 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i2) {
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2) {
                return 0;
            }
            switch (i2) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
