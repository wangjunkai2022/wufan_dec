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
import com.zhy.view.flowlayout.TagFlowSpecialLayout;
/* compiled from: PopSpecialFilterBottomOperateBinding.java */
/* loaded from: classes3.dex */
public final class y80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26851a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TagFlowSpecialLayout f26852b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TagFlowSpecialLayout f26853c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TagFlowSpecialLayout f26854d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26855e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26856f;

    private y80(@NonNull LinearLayout linearLayout, @NonNull TagFlowSpecialLayout tagFlowSpecialLayout, @NonNull TagFlowSpecialLayout tagFlowSpecialLayout2, @NonNull TagFlowSpecialLayout tagFlowSpecialLayout3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f26851a = linearLayout;
        this.f26852b = tagFlowSpecialLayout;
        this.f26853c = tagFlowSpecialLayout2;
        this.f26854d = tagFlowSpecialLayout3;
        this.f26855e = textView;
        this.f26856f = textView2;
    }

    @NonNull
    public static y80 a(@NonNull View view) {
        int i2 = R.id.filter1;
        TagFlowSpecialLayout tagFlowSpecialLayout = (TagFlowSpecialLayout) ViewBindings.findChildViewById(view, R.id.filter1);
        if (tagFlowSpecialLayout != null) {
            i2 = R.id.filter2;
            TagFlowSpecialLayout tagFlowSpecialLayout2 = (TagFlowSpecialLayout) ViewBindings.findChildViewById(view, R.id.filter2);
            if (tagFlowSpecialLayout2 != null) {
                i2 = R.id.filter3;
                TagFlowSpecialLayout tagFlowSpecialLayout3 = (TagFlowSpecialLayout) ViewBindings.findChildViewById(view, R.id.filter3);
                if (tagFlowSpecialLayout3 != null) {
                    i2 = R.id.resetButn;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.resetButn);
                    if (textView != null) {
                        i2 = R.id.setting;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.setting);
                        if (textView2 != null) {
                            return new y80((LinearLayout) view, tagFlowSpecialLayout, tagFlowSpecialLayout2, tagFlowSpecialLayout3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_special_filter_bottom_operate, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26851a;
    }
}
