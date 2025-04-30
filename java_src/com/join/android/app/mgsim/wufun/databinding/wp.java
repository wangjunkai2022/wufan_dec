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
/* compiled from: ItemFriendItemHeaderBinding.java */
/* loaded from: classes3.dex */
public final class wp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f26235a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f26236b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26237c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f26238d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26239e;

    private wp(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.f26235a = constraintLayout;
        this.f26236b = view;
        this.f26237c = imageView;
        this.f26238d = imageView2;
        this.f26239e = textView;
    }

    @NonNull
    public static wp a(@NonNull View view) {
        int i2 = R.id.add;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.add);
        if (findChildViewById != null) {
            i2 = R.id.icCollapse;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icCollapse);
            if (imageView != null) {
                i2 = R.id.imageView78;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView78);
                if (imageView2 != null) {
                    i2 = R.id.onlineNum;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.onlineNum);
                    if (textView != null) {
                        return new wp((ConstraintLayout) view, findChildViewById, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_friend_item_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f26235a;
    }
}
