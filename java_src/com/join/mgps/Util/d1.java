package com.join.mgps.Util;

import android.content.Context;
import android.text.InputFilter;
import android.text.Spanned;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: NameLengthFilter.java */
/* loaded from: classes3.dex */
public class d1 implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    int f27507a;

    /* renamed from: d  reason: collision with root package name */
    Context f27510d;

    /* renamed from: b  reason: collision with root package name */
    String f27508b = "[\\u4e00-\\u9fa5]";

    /* renamed from: c  reason: collision with root package name */
    String f27509c = "[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]";

    /* renamed from: e  reason: collision with root package name */
    Pattern f27511e = Pattern.compile("[\\u4e00-\\u9fa5]");

    /* renamed from: f  reason: collision with root package name */
    Pattern f27512f = Pattern.compile(this.f27509c);

    public d1(int i2, Context context) {
        this.f27507a = i2;
        this.f27510d = context;
    }

    private int a(String str) {
        Matcher matcher = this.f27511e.matcher(str);
        int i2 = 0;
        while (matcher.find()) {
            for (int i4 = 0; i4 <= matcher.groupCount(); i4++) {
                i2++;
            }
        }
        return i2;
    }

    private boolean b(String str) {
        return Pattern.matches(this.f27508b, str);
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
        if (this.f27512f.matcher(charSequence).find()) {
            i2.a(this.f27510d).b("不支持表情");
        }
        int length = spanned.toString().length() + a(spanned.toString());
        int length2 = charSequence.toString().length() + a(charSequence.toString());
        int i7 = length + length2;
        int i8 = this.f27507a;
        if (i7 > i8) {
            int i9 = i8 - length;
            int i10 = 0;
            String str = "";
            while (i9 > 0) {
                char charAt = charSequence.charAt(i10);
                if (b(charAt + "")) {
                    if (length2 >= 2) {
                        str = str + charAt;
                    }
                    i9 -= 2;
                } else {
                    str = str + charAt;
                    i9--;
                }
                i10++;
            }
            return str;
        }
        return charSequence;
    }
}
