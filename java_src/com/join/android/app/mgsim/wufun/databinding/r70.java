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
/* compiled from: PapamainModleItemTitleBinding.java */
/* loaded from: classes3.dex */
public final class r70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24258a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24259b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24260c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24261d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24262e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24263f;

    private r70(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24258a = relativeLayout;
        this.f24259b = imageView;
        this.f24260c = linearLayout;
        this.f24261d = textView;
        this.f24262e = textView2;
        this.f24263f = textView3;
    }

    @NonNull
    public static r70 a(@NonNull View view) {
        int i2 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
        if (imageView != null) {
            i2 = R.id.look_other;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
            if (linearLayout != null) {
                i2 = R.id.subtitle;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                if (textView != null) {
                    i2 = R.id.textView11;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView11);
                    if (textView2 != null) {
                        i2 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView3 != null) {
                            return new r70((RelativeLayout) view, imageView, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_modle_item_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24258a;
    }
}
