package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommitItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class i8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21079a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21080b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21081c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21082d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f21083e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f21084f;

    private i8(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2) {
        this.f21079a = relativeLayout;
        this.f21080b = textView;
        this.f21081c = textView2;
        this.f21082d = textView3;
        this.f21083e = simpleDraweeView;
        this.f21084f = relativeLayout2;
    }

    @NonNull
    public static i8 a(@NonNull View view) {
        int i2 = R.id.CommitItemContext;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.CommitItemContext);
        if (textView != null) {
            i2 = R.id.CommitItemName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.CommitItemName);
            if (textView2 != null) {
                i2 = R.id.CommitItemTime;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.CommitItemTime);
                if (textView3 != null) {
                    i2 = R.id.commitItemIv;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.commitItemIv);
                    if (simpleDraweeView != null) {
                        i2 = R.id.relateLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relateLayout);
                        if (relativeLayout != null) {
                            return new i8((RelativeLayout) view, textView, textView2, textView3, simpleDraweeView, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.commit_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21079a;
    }
}
