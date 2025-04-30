package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogLocalgameOneViewBinding.java */
/* loaded from: classes3.dex */
public final class dc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19292a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19293b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19294c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19295d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19296e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19297f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19298g;

    private dc(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView2) {
        this.f19292a = relativeLayout;
        this.f19293b = button;
        this.f19294c = imageView;
        this.f19295d = textView;
        this.f19296e = textView2;
        this.f19297f = textView3;
        this.f19298g = imageView2;
    }

    @NonNull
    public static dc a(@NonNull View view) {
        int i2 = R.id.localGameOneBt;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.localGameOneBt);
        if (button != null) {
            i2 = R.id.localGameOneCloseTv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.localGameOneCloseTv);
            if (imageView != null) {
                i2 = R.id.localGameOneContentTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.localGameOneContentTv);
                if (textView != null) {
                    i2 = R.id.localGameOneNotTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameOneNotTv);
                    if (textView2 != null) {
                        i2 = R.id.localGameOneTitleTv;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameOneTitleTv);
                        if (textView3 != null) {
                            i2 = R.id.localGameOneTopIv;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.localGameOneTopIv);
                            if (imageView2 != null) {
                                return new dc((RelativeLayout) view, button, imageView, textView, textView2, textView3, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_localgame_one_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19292a;
    }
}
