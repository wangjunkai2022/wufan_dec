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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LuckDrawFinishDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ew implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19907a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19908b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f19909c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19910d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19911e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19912f;

    private ew(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f19907a = linearLayout;
        this.f19908b = imageView;
        this.f19909c = simpleDraweeView;
        this.f19910d = textView;
        this.f19911e = textView2;
        this.f19912f = textView3;
    }

    @NonNull
    public static ew a(@NonNull View view) {
        int i2 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
        if (imageView != null) {
            i2 = R.id.luck;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.luck);
            if (simpleDraweeView != null) {
                i2 = R.id.ok;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                if (textView != null) {
                    i2 = R.id.sub_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sub_title);
                    if (textView2 != null) {
                        i2 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView3 != null) {
                            return new ew((LinearLayout) view, imageView, simpleDraweeView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ew c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ew d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luck_draw_finish_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19907a;
    }
}
