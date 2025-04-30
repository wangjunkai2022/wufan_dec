package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class j00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21329a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21330b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21331c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21332d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f21333e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21334f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21335g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21336h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f21337i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21338j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f21339k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f21340l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f21341m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f21342n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f21343o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final Button f21344p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f21345q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ImageView f21346r;

    private j00(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView6, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull ImageView imageView2, @NonNull Button button2, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView3) {
        this.f21329a = relativeLayout;
        this.f21330b = imageView;
        this.f21331c = textView;
        this.f21332d = textView2;
        this.f21333e = button;
        this.f21334f = textView3;
        this.f21335g = textView4;
        this.f21336h = textView5;
        this.f21337i = relativeLayout2;
        this.f21338j = textView6;
        this.f21339k = linearLayout;
        this.f21340l = linearLayout2;
        this.f21341m = textView7;
        this.f21342n = textView8;
        this.f21343o = imageView2;
        this.f21344p = button2;
        this.f21345q = relativeLayout3;
        this.f21346r = imageView3;
    }

    @NonNull
    public static j00 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.checkInFlag;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.checkInFlag);
            if (textView != null) {
                i2 = R.id.checkInImage;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.checkInImage);
                if (textView2 != null) {
                    i2 = R.id.forum_post;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_post);
                    if (button != null) {
                        i2 = R.id.forum_title_center;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_title_center);
                        if (textView3 != null) {
                            i2 = R.id.layout_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.layout_title);
                            if (textView4 != null) {
                                i2 = R.id.layout_title_right;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.layout_title_right);
                                if (textView5 != null) {
                                    i2 = R.id.myProfileMessage;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.myProfileMessage);
                                    if (relativeLayout != null) {
                                        i2 = R.id.postFuncHost;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.postFuncHost);
                                        if (textView6 != null) {
                                            i2 = R.id.postFuncMore;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.postFuncMore);
                                            if (linearLayout != null) {
                                                i2 = R.id.postFunction;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.postFunction);
                                                if (linearLayout2 != null) {
                                                    i2 = R.id.profileMessageFlag;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.profileMessageFlag);
                                                    if (textView7 != null) {
                                                        i2 = R.id.profileMessageFlagNoNum;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.profileMessageFlagNoNum);
                                                        if (textView8 != null) {
                                                            i2 = R.id.profileMessageImage;
                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.profileMessageImage);
                                                            if (imageView2 != null) {
                                                                i2 = R.id.release;
                                                                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.release);
                                                                if (button2 != null) {
                                                                    i2 = R.id.search;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.search);
                                                                    if (relativeLayout2 != null) {
                                                                        i2 = R.id.sreach_image;
                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.sreach_image);
                                                                        if (imageView3 != null) {
                                                                            return new j00((RelativeLayout) view, imageView, textView, textView2, button, textView3, textView4, textView5, relativeLayout, textView6, linearLayout, linearLayout2, textView7, textView8, imageView2, button2, relativeLayout2, imageView3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static j00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21329a;
    }
}
