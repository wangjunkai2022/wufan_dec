package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
/* compiled from: BtSelectItemBindingImpl.java */
/* loaded from: classes3.dex */
public class i4 extends h4 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts I = null;
    @Nullable
    private static final SparseIntArray J = null;
    @NonNull
    private final ConstraintLayout F;
    @NonNull
    private final TextView G;
    private long H;

    public i4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 2, I, J));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h4
    public void g1(@Nullable BtTagSelecterBean btTagSelecterBean) {
        this.E = btTagSelecterBean;
        synchronized (this) {
            this.H |= 1;
        }
        notifyPropertyChanged(20);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.H != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.H = 2L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        long j5;
        long j6;
        synchronized (this) {
            j4 = this.H;
            this.H = 0L;
        }
        BtTagSelecterBean btTagSelecterBean = this.E;
        long j7 = j4 & 3;
        int i2 = 0;
        boolean z3 = false;
        Drawable drawable = null;
        String str2 = null;
        if (j7 != 0) {
            if (btTagSelecterBean != null) {
                str2 = btTagSelecterBean.getTimeMessage();
                z3 = btTagSelecterBean.getStatus();
            }
            if (j7 != 0) {
                if (z3) {
                    j5 = j4 | 8;
                    j6 = 32;
                } else {
                    j5 = j4 | 4;
                    j6 = 16;
                }
                j4 = j5 | j6;
            }
            int s3 = ViewDataBinding.s(this.G, z3 ? R.color.white : R.color.home_gray);
            Context context = this.G.getContext();
            int i4 = z3 ? R.drawable.bt_tag_selected : R.drawable.bt_tag_normal;
            i2 = s3;
            str = str2;
            drawable = AppCompatResources.getDrawable(context, i4);
        } else {
            str = null;
        }
        if ((j4 & 3) != 0) {
            this.G.setTextColor(i2);
            ViewBindingAdapter.setBackground(this.G, drawable);
            TextViewBindingAdapter.setText(this.G, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (20 == i2) {
            g1((BtTagSelecterBean) obj);
            return true;
        }
        return false;
    }

    private i4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.H = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.F = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.G = textView;
        textView.setTag(null);
        A0(view);
        invalidateAll();
    }
}
