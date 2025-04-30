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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamelistHongrentuijianLayoutBinding.java */
/* loaded from: classes3.dex */
public final class tm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25260a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25261b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25262c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f25263d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25264e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25265f;

    private tm(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25260a = linearLayout;
        this.f25261b = textView;
        this.f25262c = linearLayout2;
        this.f25263d = simpleDraweeView;
        this.f25264e = textView2;
        this.f25265f = textView3;
    }

    @NonNull
    public static tm a(@NonNull View view) {
        int i2 = R.id.folloNum;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.folloNum);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i2 = R.id.userIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
            if (simpleDraweeView != null) {
                i2 = R.id.userName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                if (textView2 != null) {
                    i2 = R.id.userTag;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userTag);
                    if (textView3 != null) {
                        return new tm(linearLayout, textView, linearLayout, simpleDraweeView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_hongrentuijian_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25260a;
    }
}
