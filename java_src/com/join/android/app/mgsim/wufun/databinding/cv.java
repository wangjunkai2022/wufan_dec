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
/* compiled from: ListItemUserBinding.java */
/* loaded from: classes3.dex */
public final class cv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19087a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19088b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19089c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19090d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19091e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f19092f;

    private cv(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f19087a = linearLayout;
        this.f19088b = linearLayout2;
        this.f19089c = textView;
        this.f19090d = textView2;
        this.f19091e = textView3;
        this.f19092f = simpleDraweeView;
    }

    @NonNull
    public static cv a(@NonNull View view) {
        int i2 = R.id.ll_user;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_user);
        if (linearLayout != null) {
            i2 = R.id.tv_load;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_load);
            if (textView != null) {
                i2 = R.id.tv_size;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_size);
                if (textView2 != null) {
                    i2 = R.id.tv_username;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_username);
                    if (textView3 != null) {
                        i2 = R.id.user_icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.user_icon);
                        if (simpleDraweeView != null) {
                            return new cv((LinearLayout) view, linearLayout, textView, textView2, textView3, simpleDraweeView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.list_item_user, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19087a;
    }
}
