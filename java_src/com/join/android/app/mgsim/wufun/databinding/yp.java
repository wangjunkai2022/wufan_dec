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
/* compiled from: ItemFriendLikeRecordBinding.java */
/* loaded from: classes3.dex */
public final class yp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27006a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f27007b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f27008c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27009d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27010e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27011f;

    private yp(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f27006a = constraintLayout;
        this.f27007b = simpleDraweeView;
        this.f27008c = view;
        this.f27009d = textView;
        this.f27010e = textView2;
        this.f27011f = textView3;
    }

    @NonNull
    public static yp a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.likeDot;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.likeDot);
            if (findChildViewById != null) {
                i2 = R.id.msg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.msg);
                if (textView != null) {
                    i2 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView2 != null) {
                        i2 = R.id.time;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                        if (textView3 != null) {
                            return new yp((ConstraintLayout) view, simpleDraweeView, findChildViewById, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_friend_like_record, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27006a;
    }
}
