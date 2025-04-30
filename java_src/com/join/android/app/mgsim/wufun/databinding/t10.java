package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailUpdateBinding.java */
/* loaded from: classes3.dex */
public final class t10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25046a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25047b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25048c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f25049d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25050e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25051f;

    private t10(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull View view) {
        this.f25046a = linearLayout;
        this.f25047b = imageView;
        this.f25048c = textView;
        this.f25049d = relativeLayout;
        this.f25050e = textView2;
        this.f25051f = view;
    }

    @NonNull
    public static t10 a(@NonNull View view) {
        int i2 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImage);
        if (imageView != null) {
            i2 = R.id.giftsCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftsCount);
            if (textView != null) {
                i2 = R.id.giftsLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.giftsLayout);
                if (relativeLayout != null) {
                    i2 = R.id.giftsTitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.giftsTitle);
                    if (textView2 != null) {
                        i2 = R.id.lineUpdate;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineUpdate);
                        if (findChildViewById != null) {
                            return new t10((LinearLayout) view, imageView, textView, relativeLayout, textView2, findChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_update, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25046a;
    }
}
