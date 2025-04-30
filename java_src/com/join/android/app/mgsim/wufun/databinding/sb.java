package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogFriendAddBinding.java */
/* loaded from: classes3.dex */
public final class sb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24771a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24772b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f24773c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24774d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24775e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24776f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24777g;

    private sb(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f24771a = relativeLayout;
        this.f24772b = textView;
        this.f24773c = simpleDraweeView;
        this.f24774d = textView2;
        this.f24775e = imageView;
        this.f24776f = textView3;
        this.f24777g = textView4;
    }

    @NonNull
    public static sb a(@NonNull View view) {
        int i2 = R.id.accountId;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.accountId);
        if (textView != null) {
            i2 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.button;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.button);
                if (textView2 != null) {
                    i2 = R.id.close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                    if (imageView != null) {
                        i2 = R.id.name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView3 != null) {
                            i2 = R.id.tv1;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                            if (textView4 != null) {
                                return new sb((RelativeLayout) view, textView, simpleDraweeView, textView2, imageView, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_friend_add, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24771a;
    }
}
