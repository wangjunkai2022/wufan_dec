package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClouldItemView2;
/* compiled from: ArchiveshopfragmetItemBinding.java */
/* loaded from: classes3.dex */
public final class k3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21652a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ClouldItemView2 f21653b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21654c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21655d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21656e;

    private k3(@NonNull LinearLayout linearLayout, @NonNull ClouldItemView2 clouldItemView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21652a = linearLayout;
        this.f21653b = clouldItemView2;
        this.f21654c = linearLayout2;
        this.f21655d = textView;
        this.f21656e = textView2;
    }

    @NonNull
    public static k3 a(@NonNull View view) {
        int i2 = R.id.coulditem;
        ClouldItemView2 clouldItemView2 = (ClouldItemView2) ViewBindings.findChildViewById(view, R.id.coulditem);
        if (clouldItemView2 != null) {
            i2 = R.id.ll_show;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_show);
            if (linearLayout != null) {
                i2 = R.id.tv_today_id;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_today_id);
                if (textView != null) {
                    i2 = R.id.tv_zong_id;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_zong_id);
                    if (textView2 != null) {
                        return new k3((LinearLayout) view, clouldItemView2, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.archiveshopfragmet_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21652a;
    }
}
