package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
/* compiled from: ModChoiceDialogItemBindingImpl.java */
/* loaded from: classes3.dex */
public class c30 extends b30 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts J = null;
    @Nullable
    private static final SparseIntArray K = null;
    @NonNull
    private final TextView G;
    @NonNull
    private final TextView H;
    private long I;

    public c30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 3, J, K));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b30
    public void g1(@Nullable ArchiveData archiveData) {
        this.F = archiveData;
        synchronized (this) {
            this.I |= 1;
        }
        notifyPropertyChanged(4);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.I != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.I = 2L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        String str2;
        int i2;
        synchronized (this) {
            j4 = this.I;
            this.I = 0L;
        }
        ArchiveData archiveData = this.F;
        long j5 = j4 & 3;
        Drawable drawable = null;
        if (j5 != 0) {
            if (archiveData != null) {
                i2 = archiveData.getCheckStatus();
                str2 = archiveData.getArchiveDesc();
                str = archiveData.getPlayTime();
            } else {
                str = null;
                str2 = null;
                i2 = 0;
            }
            boolean z3 = i2 == 1;
            if (j5 != 0) {
                j4 |= z3 ? 8L : 4L;
            }
            drawable = AppCompatResources.getDrawable(this.E.getContext(), z3 ? R.drawable.app_blue_pressed : R.drawable.stroke_blue_radio10_butn);
        } else {
            str = null;
            str2 = null;
        }
        if ((j4 & 3) != 0) {
            ViewBindingAdapter.setBackground(this.E, drawable);
            TextViewBindingAdapter.setText(this.G, str2);
            TextViewBindingAdapter.setText(this.H, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (4 == i2) {
            g1((ArchiveData) obj);
            return true;
        }
        return false;
    }

    private c30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0]);
        this.I = -1L;
        this.E.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.G = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.H = textView2;
        textView2.setTag(null);
        A0(view);
        invalidateAll();
    }
}
