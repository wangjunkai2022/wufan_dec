package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemFriendAddReqBinding.java */
/* loaded from: classes3.dex */
public final class up implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25561a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25562b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f25563c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25564d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25565e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25566f;

    private up(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f25561a = constraintLayout;
        this.f25562b = textView;
        this.f25563c = simpleDraweeView;
        this.f25564d = textView2;
        this.f25565e = textView3;
        this.f25566f = textView4;
    }

    @NonNull
    public static up a(@NonNull View view) {
        int i2 = R.id.accept;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.accept);
        if (textView != null) {
            i2 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.decline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.decline);
                if (textView2 != null) {
                    i2 = R.id.msg;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.msg);
                    if (textView3 != null) {
                        i2 = R.id.name;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView4 != null) {
                            return new up((ConstraintLayout) view, textView, simpleDraweeView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static up c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static up d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_friend_add_req, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25561a;
    }
}
