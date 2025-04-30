package com.netease.nis.quicklogin.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.annotation.Nullable;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes4.dex */
public class FastClickButton extends Button {

    /* renamed from: a  reason: collision with root package name */
    private a f54342a;

    public FastClickButton(Context context) {
        super(context);
    }

    public void a(boolean z3) {
        a aVar = this.f54342a;
        if (aVar != null) {
            aVar.a(z3);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        a aVar = new a(onClickListener);
        this.f54342a = aVar;
        super.setOnClickListener(aVar);
    }

    public FastClickButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FastClickButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
