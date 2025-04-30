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
/* compiled from: PushNotificationBinding.java */
/* loaded from: classes3.dex */
public final class k90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21760a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21761b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21762c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21763d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21764e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21765f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21766g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f21767h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f21768i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f21769j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f21770k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f21771l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f21772m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f21773n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f21774o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f21775p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f21776q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final FrameLayout f21777r;

    private k90(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView3, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull RelativeLayout relativeLayout4, @NonNull FrameLayout frameLayout) {
        this.f21760a = relativeLayout;
        this.f21761b = imageView;
        this.f21762c = textView;
        this.f21763d = textView2;
        this.f21764e = textView3;
        this.f21765f = textView4;
        this.f21766g = linearLayout;
        this.f21767h = imageView2;
        this.f21768i = relativeLayout2;
        this.f21769j = imageView3;
        this.f21770k = textView5;
        this.f21771l = textView6;
        this.f21772m = textView7;
        this.f21773n = relativeLayout3;
        this.f21774o = textView8;
        this.f21775p = textView9;
        this.f21776q = relativeLayout4;
        this.f21777r = frameLayout;
    }

    @NonNull
    public static k90 a(@NonNull View view) {
        int i2 = R.id.push_notification_big_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.push_notification_big_icon);
        if (imageView != null) {
            i2 = R.id.push_notification_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_content);
            if (textView != null) {
                i2 = R.id.push_notification_content_one_line;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_content_one_line);
                if (textView2 != null) {
                    i2 = R.id.push_notification_date;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_date);
                    if (textView3 != null) {
                        i2 = R.id.push_notification_dot;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_dot);
                        if (textView4 != null) {
                            i2 = R.id.push_notification_layout_lefttop;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.push_notification_layout_lefttop);
                            if (linearLayout != null) {
                                i2 = R.id.push_notification_small_icon;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.push_notification_small_icon);
                                if (imageView2 != null) {
                                    i2 = R.id.push_notification_style_1;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.push_notification_style_1);
                                    if (relativeLayout != null) {
                                        i2 = R.id.push_notification_style_1_big_icon;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.push_notification_style_1_big_icon);
                                        if (imageView3 != null) {
                                            i2 = R.id.push_notification_style_1_content;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_style_1_content);
                                            if (textView5 != null) {
                                                i2 = R.id.push_notification_style_1_date;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_style_1_date);
                                                if (textView6 != null) {
                                                    i2 = R.id.push_notification_style_1_title;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_style_1_title);
                                                    if (textView7 != null) {
                                                        i2 = R.id.push_notification_style_default;
                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.push_notification_style_default);
                                                        if (relativeLayout2 != null) {
                                                            i2 = R.id.push_notification_sub_title;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_sub_title);
                                                            if (textView8 != null) {
                                                                i2 = R.id.push_notification_title;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.push_notification_title);
                                                                if (textView9 != null) {
                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) view;
                                                                    i2 = R.id.f17876v;
                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.f17876v);
                                                                    if (frameLayout != null) {
                                                                        return new k90(relativeLayout3, imageView, textView, textView2, textView3, textView4, linearLayout, imageView2, relativeLayout, imageView3, textView5, textView6, textView7, relativeLayout2, textView8, textView9, relativeLayout3, frameLayout);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.push_notification, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21760a;
    }
}
