package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainBroadcaseTopLayoutBinding.java */
/* loaded from: classes3.dex */
public final class a70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18038a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18039b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18040c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18041d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f18042e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f18043f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f18044g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18045h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18046i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18047j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18048k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f18049l;

    private a70(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull LinearLayout linearLayout3) {
        this.f18038a = linearLayout;
        this.f18039b = textView;
        this.f18040c = textView2;
        this.f18041d = linearLayout2;
        this.f18042e = simpleDraweeView;
        this.f18043f = simpleDraweeView2;
        this.f18044g = simpleDraweeView3;
        this.f18045h = textView3;
        this.f18046i = textView4;
        this.f18047j = textView5;
        this.f18048k = textView6;
        this.f18049l = linearLayout3;
    }

    @NonNull
    public static a70 a(@NonNull View view) {
        int i2 = R.id.comment;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment);
        if (textView != null) {
            i2 = R.id.commentNumber;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.commentNumber);
            if (textView2 != null) {
                i2 = R.id.gamebroadcastTop;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gamebroadcastTop);
                if (linearLayout != null) {
                    i2 = R.id.gamebroadcastTopImage1;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopImage1);
                    if (simpleDraweeView != null) {
                        i2 = R.id.gamebroadcastTopImage2;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopImage2);
                        if (simpleDraweeView2 != null) {
                            i2 = R.id.gamebroadcastTopImage3;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopImage3);
                            if (simpleDraweeView3 != null) {
                                i2 = R.id.gamebroadcastTopText1;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopText1);
                                if (textView3 != null) {
                                    i2 = R.id.gamebroadcastTopText2;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.gamebroadcastTopText2);
                                    if (textView4 != null) {
                                        i2 = R.id.read;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.read);
                                        if (textView5 != null) {
                                            i2 = R.id.readNumber;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.readNumber);
                                            if (textView6 != null) {
                                                i2 = R.id.topTextLayout;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topTextLayout);
                                                if (linearLayout2 != null) {
                                                    return new a70((LinearLayout) view, textView, textView2, linearLayout, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView3, textView4, textView5, textView6, linearLayout2);
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
    public static a70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_broadcase_top_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18038a;
    }
}
