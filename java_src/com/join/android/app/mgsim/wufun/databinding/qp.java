package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemDownloadCenterAdTitleBinding.java */
/* loaded from: classes3.dex */
public final class qp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24041a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24042b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24043c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f24044d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24045e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24046f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24047g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24048h;

    private qp(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24041a = linearLayout;
        this.f24042b = imageView;
        this.f24043c = imageView2;
        this.f24044d = view;
        this.f24045e = linearLayout2;
        this.f24046f = textView;
        this.f24047g = textView2;
        this.f24048h = textView3;
    }

    @NonNull
    public static qp a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.imageView5;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
            if (imageView2 != null) {
                i2 = R.id.line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById != null) {
                    i2 = R.id.look_other;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
                    if (linearLayout != null) {
                        i2 = R.id.subtitle;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                        if (textView != null) {
                            i2 = R.id.textView11;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView11);
                            if (textView2 != null) {
                                i2 = R.id.titleText;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                if (textView3 != null) {
                                    return new qp((LinearLayout) view, imageView, imageView2, findChildViewById, linearLayout, textView, textView2, textView3);
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
    public static qp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_download_center_ad_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24041a;
    }
}
