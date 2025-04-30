package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AccountBaseActivityBinding.java */
/* loaded from: classes3.dex */
public final class b implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18328a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18329b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f18330c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f18331d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18332e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18333f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f18334g;

    private b(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull View view2) {
        this.f18328a = relativeLayout;
        this.f18329b = imageView;
        this.f18330c = view;
        this.f18331d = frameLayout;
        this.f18332e = textView;
        this.f18333f = linearLayout;
        this.f18334g = view2;
    }

    @NonNull
    public static b a(@NonNull View view) {
        int i2 = R.id.backButn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backButn);
        if (imageView != null) {
            i2 = R.id.backView;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.backView);
            if (findChildViewById != null) {
                i2 = R.id.childLayout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.childLayout);
                if (frameLayout != null) {
                    i2 = R.id.titleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                    if (textView != null) {
                        i2 = R.id.titlelayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titlelayout);
                        if (linearLayout != null) {
                            i2 = R.id.view2;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view2);
                            if (findChildViewById2 != null) {
                                return new b((RelativeLayout) view, imageView, findChildViewById, frameLayout, textView, linearLayout, findChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static b c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.account_base_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18328a;
    }
}
