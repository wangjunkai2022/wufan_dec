package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
/* compiled from: MaxInputValidator.java */
/* loaded from: classes2.dex */
class c implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    private int f16261a;

    public c(int i2) {
        this.f16261a = i2;
    }

    public int a() {
        return this.f16261a;
    }

    public void b(int i2) {
        this.f16261a = i2;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i5, i6, charSequence.subSequence(i2, i4).toString());
            if (Integer.parseInt(sb.toString()) <= this.f16261a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
