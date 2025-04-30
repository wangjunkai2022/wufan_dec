package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
/* loaded from: classes3.dex */
public class CustomEdittext extends EditText {

    /* renamed from: a  reason: collision with root package name */
    a f45300a;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i2, int i4);
    }

    public CustomEdittext(Context context) {
        super(context);
    }

    public a getOnSelectionChanged() {
        return this.f45300a;
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i2, int i4) {
        super.onSelectionChanged(i2, i4);
        a aVar = this.f45300a;
        if (aVar != null) {
            aVar.a(i2, i4);
        }
    }

    public void setOnSelectionChanged(a aVar) {
        this.f45300a = aVar;
    }

    public CustomEdittext(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomEdittext(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
