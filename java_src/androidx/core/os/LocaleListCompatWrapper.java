package androidx.core.os;

import android.os.Build;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
/* loaded from: classes.dex */
final class LocaleListCompatWrapper implements LocaleListInterface {

    /* renamed from: c  reason: collision with root package name */
    private static final Locale[] f4495c = new Locale[0];

    /* renamed from: d  reason: collision with root package name */
    private static final Locale f4496d = new Locale("en", "XA");

    /* renamed from: e  reason: collision with root package name */
    private static final Locale f4497e = new Locale("ar", "XB");

    /* renamed from: f  reason: collision with root package name */
    private static final Locale f4498f = LocaleListCompat.a("en-Latn");

    /* renamed from: a  reason: collision with root package name */
    private final Locale[] f4499a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f4500b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocaleListCompatWrapper(@NonNull Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f4499a = f4495c;
            this.f4500b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < localeArr.length; i2++) {
            Locale locale = localeArr[i2];
            if (locale != null) {
                if (!hashSet.contains(locale)) {
                    Locale locale2 = (Locale) locale.clone();
                    arrayList.add(locale2);
                    g(sb, locale2);
                    if (i2 < localeArr.length - 1) {
                        sb.append(StringUtil.COMMA);
                    }
                    hashSet.add(locale2);
                }
            } else {
                throw new NullPointerException("list[" + i2 + "] is null");
            }
        }
        this.f4499a = (Locale[]) arrayList.toArray(new Locale[arrayList.size()]);
        this.f4500b = sb.toString();
    }

    private Locale a(Collection<String> collection, boolean z3) {
        int b4 = b(collection, z3);
        if (b4 == -1) {
            return null;
        }
        return this.f4499a[b4];
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
        if (r6 < Integer.MAX_VALUE) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int b(java.util.Collection<java.lang.String> r5, boolean r6) {
        /*
            r4 = this;
            java.util.Locale[] r0 = r4.f4499a
            int r1 = r0.length
            r2 = 0
            r3 = 1
            if (r1 != r3) goto L8
            return r2
        L8:
            int r0 = r0.length
            if (r0 != 0) goto Ld
            r5 = -1
            return r5
        Ld:
            r0 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == 0) goto L1e
            java.util.Locale r6 = androidx.core.os.LocaleListCompatWrapper.f4498f
            int r6 = r4.c(r6)
            if (r6 != 0) goto L1b
            return r2
        L1b:
            if (r6 >= r0) goto L1e
            goto L21
        L1e:
            r6 = 2147483647(0x7fffffff, float:NaN)
        L21:
            java.util.Iterator r5 = r5.iterator()
        L25:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r5.next()
            java.lang.String r1 = (java.lang.String) r1
            java.util.Locale r1 = androidx.core.os.LocaleListCompat.a(r1)
            int r1 = r4.c(r1)
            if (r1 != 0) goto L3c
            return r2
        L3c:
            if (r1 >= r6) goto L25
            r6 = r1
            goto L25
        L40:
            if (r6 != r0) goto L43
            return r2
        L43:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.os.LocaleListCompatWrapper.b(java.util.Collection, boolean):int");
    }

    private int c(Locale locale) {
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f4499a;
            if (i2 >= localeArr.length) {
                return Integer.MAX_VALUE;
            }
            if (f(locale, localeArr[i2]) > 0) {
                return i2;
            }
            i2++;
        }
    }

    private static String d(Locale locale) {
        if (Build.VERSION.SDK_INT >= 21) {
            String script = locale.getScript();
            if (!script.isEmpty()) {
                return script;
            }
        }
        return "";
    }

    private static boolean e(Locale locale) {
        return f4496d.equals(locale) || f4497e.equals(locale);
    }

    @IntRange(from = 0, to = 1)
    private static int f(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return 1;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage()) || e(locale) || e(locale2)) {
            return 0;
        }
        String d4 = d(locale);
        if (d4.isEmpty()) {
            String country = locale.getCountry();
            return (country.isEmpty() || country.equals(locale2.getCountry())) ? 1 : 0;
        }
        return d4.equals(d(locale2)) ? 1 : 0;
    }

    @VisibleForTesting
    static void g(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb.append('-');
        sb.append(locale.getCountry());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocaleListCompatWrapper)) {
            return false;
        }
        Locale[] localeArr = ((LocaleListCompatWrapper) obj).f4499a;
        if (this.f4499a.length != localeArr.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            Locale[] localeArr2 = this.f4499a;
            if (i2 >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i2].equals(localeArr[i2])) {
                return false;
            }
            i2++;
        }
    }

    @Override // androidx.core.os.LocaleListInterface
    public Locale get(int i2) {
        if (i2 >= 0) {
            Locale[] localeArr = this.f4499a;
            if (i2 < localeArr.length) {
                return localeArr[i2];
            }
        }
        return null;
    }

    @Override // androidx.core.os.LocaleListInterface
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return a(Arrays.asList(strArr), false);
    }

    @Override // androidx.core.os.LocaleListInterface
    @Nullable
    public Object getLocaleList() {
        return null;
    }

    public int hashCode() {
        int i2 = 1;
        int i4 = 0;
        while (true) {
            Locale[] localeArr = this.f4499a;
            if (i4 >= localeArr.length) {
                return i2;
            }
            i2 = (i2 * 31) + localeArr[i4].hashCode();
            i4++;
        }
    }

    @Override // androidx.core.os.LocaleListInterface
    public int indexOf(Locale locale) {
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f4499a;
            if (i2 >= localeArr.length) {
                return -1;
            }
            if (localeArr[i2].equals(locale)) {
                return i2;
            }
            i2++;
        }
    }

    @Override // androidx.core.os.LocaleListInterface
    public boolean isEmpty() {
        return this.f4499a.length == 0;
    }

    @Override // androidx.core.os.LocaleListInterface
    public int size() {
        return this.f4499a.length;
    }

    @Override // androidx.core.os.LocaleListInterface
    public String toLanguageTags() {
        return this.f4500b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f4499a;
            if (i2 < localeArr.length) {
                sb.append(localeArr[i2]);
                if (i2 < this.f4499a.length - 1) {
                    sb.append(StringUtil.COMMA);
                }
                i2++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
