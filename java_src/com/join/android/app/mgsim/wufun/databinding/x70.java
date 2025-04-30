package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapapayheadBinding.java */
/* loaded from: classes3.dex */
public final class x70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26474a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26475b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26476c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26477d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26478e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26479f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26480g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26481h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f26482i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26483j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f26484k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26485l;

    private x70(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull Button button, @NonNull TextView textView6) {
        this.f26474a = linearLayout;
        this.f26475b = imageView;
        this.f26476c = linearLayout2;
        this.f26477d = textView;
        this.f26478e = textView2;
        this.f26479f = imageView2;
        this.f26480g = textView3;
        this.f26481h = textView4;
        this.f26482i = simpleDraweeView;
        this.f26483j = textView5;
        this.f26484k = button;
        this.f26485l = textView6;
    }

    @NonNull
    public static x70 a(@NonNull View view) {
        int i2 = R.id.hongbao;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.hongbao);
        if (imageView != null) {
            i2 = R.id.hongbaoLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.hongbaoLayout);
            if (linearLayout != null) {
                i2 = R.id.listHead;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.listHead);
                if (textView != null) {
                    i2 = R.id.message;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                    if (textView2 != null) {
                        i2 = R.id.more;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.more);
                        if (imageView2 != null) {
                            i2 = R.id.name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                            if (textView3 != null) {
                                i2 = R.id.pabiNumber;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.pabiNumber);
                                if (textView4 != null) {
                                    i2 = R.id.papaPayIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.papaPayIcon);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.payRedNumber;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.payRedNumber);
                                        if (textView5 != null) {
                                            i2 = R.id.payStart;
                                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.payStart);
                                            if (button != null) {
                                                i2 = R.id.title_textview;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                                if (textView6 != null) {
                                                    return new x70((LinearLayout) view, imageView, linearLayout, textView, textView2, imageView2, textView3, textView4, simpleDraweeView, textView5, button, textView6);
                                                }
                                            }
                                        }
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
    public static x70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papapayhead, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26474a;
    }
}
