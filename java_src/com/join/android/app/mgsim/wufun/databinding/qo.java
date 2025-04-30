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
/* compiled from: InformationCommentItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class qo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24036a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24037b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24038c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f24039d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24040e;

    private qo(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3) {
        this.f24036a = linearLayout;
        this.f24037b = textView;
        this.f24038c = textView2;
        this.f24039d = simpleDraweeView;
        this.f24040e = textView3;
    }

    @NonNull
    public static qo a(@NonNull View view) {
        int i2 = R.id.message;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.message);
        if (textView != null) {
            i2 = R.id.time;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
            if (textView2 != null) {
                i2 = R.id.userIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                if (simpleDraweeView != null) {
                    i2 = R.id.userName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                    if (textView3 != null) {
                        return new qo((LinearLayout) view, textView, textView2, simpleDraweeView, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.information_comment_item__layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24036a;
    }
}
