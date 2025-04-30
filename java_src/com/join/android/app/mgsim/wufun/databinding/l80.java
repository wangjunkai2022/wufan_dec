package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopFriendAliveBinding.java */
/* loaded from: classes3.dex */
public final class l80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22043a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22044b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22045c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22046d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f22047e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f22048f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22049g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22050h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f22051i;

    private l80(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull View view, @NonNull View view2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view3) {
        this.f22043a = constraintLayout;
        this.f22044b = imageView;
        this.f22045c = imageView2;
        this.f22046d = textView;
        this.f22047e = view;
        this.f22048f = view2;
        this.f22049g = textView2;
        this.f22050h = textView3;
        this.f22051i = view3;
    }

    @NonNull
    public static l80 a(@NonNull View view) {
        int i2 = R.id.imageView71;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView71);
        if (imageView != null) {
            i2 = R.id.imageView72;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView72);
            if (imageView2 != null) {
                i2 = R.id.iv1;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.iv1);
                if (textView != null) {
                    i2 = R.id.notDisturb;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.notDisturb);
                    if (findChildViewById != null) {
                        i2 = R.id.online;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.online);
                        if (findChildViewById2 != null) {
                            i2 = R.id.textView95;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView95);
                            if (textView2 != null) {
                                i2 = R.id.textView96;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView96);
                                if (textView3 != null) {
                                    i2 = R.id.view9;
                                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.view9);
                                    if (findChildViewById3 != null) {
                                        return new l80((ConstraintLayout) view, imageView, imageView2, textView, findChildViewById, findChildViewById2, textView2, textView3, findChildViewById3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_friend_alive, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22043a;
    }
}
