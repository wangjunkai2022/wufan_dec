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
/* compiled from: LayoutFriendDelDialogBinding.java */
/* loaded from: classes3.dex */
public final class lt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22203a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22204b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22205c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22206d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f22207e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22208f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22209g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22210h;

    private lt(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f22203a = constraintLayout;
        this.f22204b = textView;
        this.f22205c = imageView;
        this.f22206d = imageView2;
        this.f22207e = view;
        this.f22208f = textView2;
        this.f22209g = textView3;
        this.f22210h = textView4;
    }

    @NonNull
    public static lt a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.imageView66;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView66);
            if (imageView != null) {
                i2 = R.id.imageView68;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView68);
                if (imageView2 != null) {
                    i2 = R.id.iv_close;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (findChildViewById != null) {
                        i2 = R.id.ok;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                        if (textView2 != null) {
                            i2 = R.id.textView91;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView91);
                            if (textView3 != null) {
                                i2 = R.id.textView97;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView97);
                                if (textView4 != null) {
                                    return new lt((ConstraintLayout) view, textView, imageView, imageView2, findChildViewById, textView2, textView3, textView4);
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
    public static lt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_friend_del_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22203a;
    }
}
