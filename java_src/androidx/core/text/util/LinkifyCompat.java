package androidx.core.text.util;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.net.MailTo;
import androidx.core.util.PatternsCompat;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class LinkifyCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f4684a = new String[0];

    /* renamed from: b  reason: collision with root package name */
    private static final Comparator<LinkSpec> f4685b = new Comparator<LinkSpec>() { // from class: androidx.core.text.util.LinkifyCompat.1
        @Override // java.util.Comparator
        public int compare(LinkSpec linkSpec, LinkSpec linkSpec2) {
            int i2;
            int i4;
            int i5 = linkSpec.f4688c;
            int i6 = linkSpec2.f4688c;
            if (i5 < i6) {
                return -1;
            }
            if (i5 <= i6 && (i2 = linkSpec.f4689d) >= (i4 = linkSpec2.f4689d)) {
                return i2 > i4 ? -1 : 0;
            }
            return 1;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LinkSpec {

        /* renamed from: a  reason: collision with root package name */
        URLSpan f4686a;

        /* renamed from: b  reason: collision with root package name */
        String f4687b;

        /* renamed from: c  reason: collision with root package name */
        int f4688c;

        /* renamed from: d  reason: collision with root package name */
        int f4689d;

        LinkSpec() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface LinkifyMask {
    }

    private LinkifyCompat() {
    }

    private static void a(@NonNull TextView textView) {
        if ((textView.getMovementMethod() instanceof LinkMovementMethod) || !textView.getLinksClickable()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static boolean addLinks(@NonNull Spannable spannable, int i2) {
        if (h()) {
            return Linkify.addLinks(spannable, i2);
        }
        if (i2 == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        if ((i2 & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        ArrayList arrayList = new ArrayList();
        if ((i2 & 1) != 0) {
            d(arrayList, spannable, PatternsCompat.AUTOLINK_WEB_URL, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter, null);
        }
        if ((i2 & 2) != 0) {
            d(arrayList, spannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{MailTo.MAILTO_SCHEME}, null, null);
        }
        if ((i2 & 8) != 0) {
            e(arrayList, spannable);
        }
        g(arrayList, spannable);
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            LinkSpec linkSpec = (LinkSpec) it2.next();
            if (linkSpec.f4686a == null) {
                b(linkSpec.f4687b, linkSpec.f4688c, linkSpec.f4689d, spannable);
            }
        }
        return true;
    }

    private static void b(String str, int i2, int i4, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i2, i4, 33);
    }

    private static String c(String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            return WebView.findAddress(str);
        }
        return FindAddress.c(str);
    }

    private static void d(ArrayList<LinkSpec> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) {
                LinkSpec linkSpec = new LinkSpec();
                linkSpec.f4687b = f(matcher.group(0), strArr, matcher, transformFilter);
                linkSpec.f4688c = start;
                linkSpec.f4689d = end;
                arrayList.add(linkSpec);
            }
        }
    }

    private static void e(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int indexOf;
        String obj = spannable.toString();
        int i2 = 0;
        while (true) {
            try {
                String c4 = c(obj);
                if (c4 != null && (indexOf = obj.indexOf(c4)) >= 0) {
                    LinkSpec linkSpec = new LinkSpec();
                    int length = c4.length() + indexOf;
                    linkSpec.f4688c = indexOf + i2;
                    i2 += length;
                    linkSpec.f4689d = i2;
                    obj = obj.substring(length);
                    try {
                        String encode = URLEncoder.encode(c4, "UTF-8");
                        linkSpec.f4687b = "geo:0,0?q=" + encode;
                        arrayList.add(linkSpec);
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                return;
            } catch (UnsupportedOperationException unused2) {
                return;
            }
        }
    }

    private static String f(@NonNull String str, @NonNull String[] strArr, Matcher matcher, @Nullable Linkify.TransformFilter transformFilter) {
        boolean z3;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        int i2 = 0;
        while (true) {
            z3 = true;
            if (i2 >= strArr.length) {
                z3 = false;
                break;
            }
            if (str.regionMatches(true, 0, strArr[i2], 0, strArr[i2].length())) {
                if (!str.regionMatches(false, 0, strArr[i2], 0, strArr[i2].length())) {
                    str = strArr[i2] + str.substring(strArr[i2].length());
                }
            } else {
                i2++;
            }
        }
        if (z3 || strArr.length <= 0) {
            return str;
        }
        return strArr[0] + str;
    }

    private static void g(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int i2;
        int i4 = 0;
        Object[] objArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int i5 = 0; i5 < objArr.length; i5++) {
            LinkSpec linkSpec = new LinkSpec();
            linkSpec.f4686a = objArr[i5];
            linkSpec.f4688c = spannable.getSpanStart(objArr[i5]);
            linkSpec.f4689d = spannable.getSpanEnd(objArr[i5]);
            arrayList.add(linkSpec);
        }
        Collections.sort(arrayList, f4685b);
        int size = arrayList.size();
        while (i4 < size - 1) {
            LinkSpec linkSpec2 = arrayList.get(i4);
            int i6 = i4 + 1;
            LinkSpec linkSpec3 = arrayList.get(i6);
            int i7 = linkSpec2.f4688c;
            int i8 = linkSpec3.f4688c;
            if (i7 <= i8 && (i2 = linkSpec2.f4689d) > i8) {
                int i9 = linkSpec3.f4689d;
                int i10 = (i9 > i2 && i2 - i7 <= i9 - i8) ? i2 - i7 < i9 - i8 ? i4 : -1 : i6;
                if (i10 != -1) {
                    Object obj = arrayList.get(i10).f4686a;
                    if (obj != null) {
                        spannable.removeSpan(obj);
                    }
                    arrayList.remove(i10);
                    size--;
                }
            }
            i4 = i6;
        }
    }

    private static boolean h() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean addLinks(@NonNull TextView textView, int i2) {
        if (h()) {
            return Linkify.addLinks(textView, i2);
        }
        if (i2 == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (addLinks((Spannable) text, i2)) {
                a(textView);
                return true;
            }
            return false;
        }
        SpannableString valueOf = SpannableString.valueOf(text);
        if (addLinks(valueOf, i2)) {
            a(textView);
            textView.setText(valueOf);
            return true;
        }
        return false;
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str) {
        if (h()) {
            Linkify.addLinks(textView, pattern, str);
        } else {
            addLinks(textView, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (h()) {
            Linkify.addLinks(textView, pattern, str, matchFilter, transformFilter);
        } else {
            addLinks(textView, pattern, str, (String[]) null, matchFilter, transformFilter);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (h()) {
            Linkify.addLinks(textView, pattern, str, strArr, matchFilter, transformFilter);
            return;
        }
        SpannableString valueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(valueOf, pattern, str, strArr, matchFilter, transformFilter)) {
            textView.setText(valueOf);
            a(textView);
        }
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str) {
        if (h()) {
            return Linkify.addLinks(spannable, pattern, str);
        }
        return addLinks(spannable, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (h()) {
            return Linkify.addLinks(spannable, pattern, str, matchFilter, transformFilter);
        }
        return addLinks(spannable, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (h()) {
            return Linkify.addLinks(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
        if (str == null) {
            str = "";
        }
        if (strArr == null || strArr.length < 1) {
            strArr = f4684a;
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str.toLowerCase(Locale.ROOT);
        int i2 = 0;
        while (i2 < strArr.length) {
            String str2 = strArr[i2];
            i2++;
            strArr2[i2] = str2 == null ? "" : str2.toLowerCase(Locale.ROOT);
        }
        Matcher matcher = pattern.matcher(spannable);
        boolean z3 = false;
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter != null ? matchFilter.acceptMatch(spannable, start, end) : true) {
                b(f(matcher.group(0), strArr2, matcher, transformFilter), start, end, spannable);
                z3 = true;
            }
        }
        return z3;
    }
}
