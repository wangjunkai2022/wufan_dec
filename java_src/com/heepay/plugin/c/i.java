package com.heepay.plugin.c;

import android.content.Context;
import android.widget.Toast;
/* loaded from: classes2.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private static i f16788b = new i();

    /* renamed from: a  reason: collision with root package name */
    private Toast f16789a;

    public static i a() {
        return f16788b;
    }

    public void a(Context context, CharSequence charSequence) {
        Toast toast = this.f16789a;
        if (toast == null) {
            this.f16789a = Toast.makeText(context, charSequence, 1);
        } else {
            toast.setText(charSequence);
        }
        this.f16789a.show();
    }
}
