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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DetialCloudArchiveLayoutBinding.java */
/* loaded from: classes3.dex */
public final class t9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25135a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25136b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25137c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f25138d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25139e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25140f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25141g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f25142h;

    private t9(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView3, @NonNull View view2) {
        this.f25135a = constraintLayout;
        this.f25136b = textView;
        this.f25137c = textView2;
        this.f25138d = simpleDraweeView;
        this.f25139e = imageView;
        this.f25140f = view;
        this.f25141g = textView3;
        this.f25142h = view2;
    }

    @NonNull
    public static t9 a(@NonNull View view) {
        int i2 = R.id.auth;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.auth);
        if (textView != null) {
            i2 = R.id.count;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count);
            if (textView2 != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.imageView47;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView47);
                    if (imageView != null) {
                        i2 = R.id.line_h;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_h);
                        if (findChildViewById != null) {
                            i2 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView3 != null) {
                                i2 = R.id.top;
                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.top);
                                if (findChildViewById2 != null) {
                                    return new t9((ConstraintLayout) view, textView, textView2, simpleDraweeView, imageView, findChildViewById, textView3, findChildViewById2);
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
    public static t9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_cloud_archive_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25135a;
    }
}
