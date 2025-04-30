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
/* compiled from: GamedetailItemRecordHeaderBinding.java */
/* loaded from: classes3.dex */
public final class tk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25246a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25247b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25248c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25249d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25250e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25251f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25252g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25253h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25254i;

    private tk(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f25246a = linearLayout;
        this.f25247b = linearLayout2;
        this.f25248c = textView;
        this.f25249d = imageView;
        this.f25250e = textView2;
        this.f25251f = linearLayout3;
        this.f25252g = textView3;
        this.f25253h = textView4;
        this.f25254i = textView5;
    }

    @NonNull
    public static tk a(@NonNull View view) {
        int i2 = R.id.commentHeaderLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.commentHeaderLayout);
        if (linearLayout != null) {
            i2 = R.id.commitCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.commitCount);
            if (textView != null) {
                i2 = R.id.commitImage;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.commitImage);
                if (imageView != null) {
                    i2 = R.id.commitTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.commitTv);
                    if (textView2 != null) {
                        i2 = R.id.layoutBottom;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutBottom);
                        if (linearLayout2 != null) {
                            i2 = R.id.textView53;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView53);
                            if (textView3 != null) {
                                i2 = R.id.textView9;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                                if (textView4 != null) {
                                    i2 = R.id.tv_right;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_right);
                                    if (textView5 != null) {
                                        return new tk((LinearLayout) view, linearLayout, textView, imageView, textView2, linearLayout2, textView3, textView4, textView5);
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
    public static tk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_record_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25246a;
    }
}
