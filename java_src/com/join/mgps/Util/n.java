package com.join.mgps.Util;

import android.content.Context;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.EditText;
/* compiled from: CheckEmojiUtile.java */
/* loaded from: classes3.dex */
public class n {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CheckEmojiUtile.java */
    /* loaded from: classes3.dex */
    public class a implements InputFilter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27700a;

        a(Context context) {
            this.f27700a = context;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
            StringBuffer stringBuffer = new StringBuffer();
            int i7 = i2;
            while (i7 < i4) {
                char charAt = charSequence.charAt(i7);
                if (!n.c(charAt)) {
                    stringBuffer.append(charAt);
                } else {
                    i2.a(this.f27700a).b("昵称不能含有表情");
                    i7++;
                }
                i7++;
            }
            if (charSequence instanceof Spanned) {
                SpannableString spannableString = new SpannableString(stringBuffer);
                TextUtils.copySpansFrom((Spanned) charSequence, i2, i4, null, spannableString, 0);
                return spannableString;
            }
            return stringBuffer;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CheckEmojiUtile.java */
    /* loaded from: classes3.dex */
    public class b implements InputFilter {
        b() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i7 = i2; i7 < i4; i7++) {
                stringBuffer.append(charSequence.charAt(i7));
            }
            if (charSequence instanceof Spanned) {
                SpannableString spannableString = new SpannableString(stringBuffer);
                TextUtils.copySpansFrom((Spanned) charSequence, i2, i4, null, spannableString, 0);
                return spannableString;
            }
            return stringBuffer;
        }
    }

    public static InputFilter a(Context context) {
        return new a(context);
    }

    public static InputFilter b(Context context) {
        return new b();
    }

    public static boolean c(char c4) {
        if (c4 == 0 || c4 == '\t' || c4 == '\n' || c4 == '\r') {
            return false;
        }
        if (c4 < ' ' || c4 > 55295) {
            if (c4 < 57344 || c4 > 65533) {
                return c4 < 0 || c4 > 65535;
            }
            return false;
        }
        return false;
    }

    public static boolean d(char c4) {
        return Character.getType(c4) > 10;
    }

    private static boolean e(char c4) {
        return (c4 == 0 || c4 == '\t' || c4 == '\n' || c4 == '\r' || (c4 >= ' ' && c4 <= 55295) || ((c4 >= 57344 && c4 <= 65533) || (c4 >= 0 && c4 <= 65535))) ? false : true;
    }

    public static boolean f(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (e(str.charAt(i2))) {
                return true;
            }
        }
        return false;
    }

    public static void g(EditText editText) {
        editText.setFilters(new InputFilter[]{a(editText.getContext()), b(editText.getContext())});
    }
}
