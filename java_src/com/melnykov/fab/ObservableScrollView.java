package com.melnykov.fab;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes4.dex */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private a f52648a;

    /* loaded from: classes4.dex */
    public interface a {
        void a(ScrollView scrollView, int i2, int i4, int i5, int i6);
    }

    public ObservableScrollView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        a aVar = this.f52648a;
        if (aVar != null) {
            aVar.a(this, i2, i4, i5, i6);
        }
    }

    public void setOnScrollChangedListener(a aVar) {
        this.f52648a = aVar;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
