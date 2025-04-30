package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MultilineTextView;
/* compiled from: ChioceItemOrderMainBinding.java */
/* loaded from: classes3.dex */
public final class l5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22021a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22022b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22023c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MultilineTextView f22024d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f22025e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22026f;

    private l5(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull MultilineTextView multilineTextView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.f22021a = relativeLayout;
        this.f22022b = simpleDraweeView;
        this.f22023c = textView;
        this.f22024d = multilineTextView;
        this.f22025e = linearLayout;
        this.f22026f = textView2;
    }

    @NonNull
    public static l5 a(@NonNull View view) {
        int i2 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
        if (simpleDraweeView != null) {
            i2 = R.id.date;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
            if (textView != null) {
                i2 = R.id.desc;
                MultilineTextView multilineTextView = (MultilineTextView) ViewBindings.findChildViewById(view, R.id.desc);
                if (multilineTextView != null) {
                    i2 = R.id.detail;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.detail);
                    if (linearLayout != null) {
                        i2 = R.id.name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView2 != null) {
                            return new l5((RelativeLayout) view, simpleDraweeView, textView, multilineTextView, linearLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_order_main, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22021a;
    }
}
