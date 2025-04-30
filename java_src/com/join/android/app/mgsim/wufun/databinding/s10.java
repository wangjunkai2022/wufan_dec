package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailTitleBinding.java */
/* loaded from: classes3.dex */
public final class s10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24648a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24649b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24650c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f24651d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24652e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24653f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f24654g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f24655h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f24656i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final HorizontalScrollView f24657j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24658k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f24659l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f24660m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f24661n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f24662o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f24663p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f24664q;

    private s10(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView, @NonNull HorizontalScrollView horizontalScrollView, @NonNull TextView textView5, @NonNull LinearLayout linearLayout, @NonNull Button button2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView6, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.f24648a = relativeLayout;
        this.f24649b = textView;
        this.f24650c = textView2;
        this.f24651d = simpleDraweeView;
        this.f24652e = textView3;
        this.f24653f = textView4;
        this.f24654g = button;
        this.f24655h = simpleDraweeView2;
        this.f24656i = imageView;
        this.f24657j = horizontalScrollView;
        this.f24658k = textView5;
        this.f24659l = linearLayout;
        this.f24660m = button2;
        this.f24661n = linearLayout2;
        this.f24662o = textView6;
        this.f24663p = linearLayout3;
        this.f24664q = linearLayout4;
    }

    @NonNull
    public static s10 a(@NonNull View view) {
        int i2 = R.id.appCompany;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appCompany);
        if (textView != null) {
            i2 = R.id.appDownloadCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appDownloadCount);
            if (textView2 != null) {
                i2 = R.id.appIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
                if (simpleDraweeView != null) {
                    i2 = R.id.appName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
                    if (textView3 != null) {
                        i2 = R.id.appSize;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
                        if (textView4 != null) {
                            i2 = R.id.gameFollowButn;
                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.gameFollowButn);
                            if (button != null) {
                                i2 = R.id.gameInfoLayout;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameInfoLayout);
                                if (simpleDraweeView2 != null) {
                                    i2 = R.id.imageView18;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView18);
                                    if (imageView != null) {
                                        i2 = R.id.scrollView;
                                        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                        if (horizontalScrollView != null) {
                                            i2 = R.id.textNullToTwo;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textNullToTwo);
                                            if (textView5 != null) {
                                                i2 = R.id.tipsLayout;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                if (linearLayout != null) {
                                                    i2 = R.id.titleMoreBookButn;
                                                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.titleMoreBookButn);
                                                    if (button2 != null) {
                                                        i2 = R.id.titleMoreLayout;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titleMoreLayout);
                                                        if (linearLayout2 != null) {
                                                            i2 = R.id.titleMoreMessage;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.titleMoreMessage);
                                                            if (textView6 != null) {
                                                                i2 = R.id.titleMoreTip;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titleMoreTip);
                                                                if (linearLayout3 != null) {
                                                                    i2 = R.id.titlelayout;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titlelayout);
                                                                    if (linearLayout4 != null) {
                                                                        return new s10((RelativeLayout) view, textView, textView2, simpleDraweeView, textView3, textView4, button, simpleDraweeView2, imageView, horizontalScrollView, textView5, linearLayout, button2, linearLayout2, textView6, linearLayout3, linearLayout4);
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
    public static s10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24648a;
    }
}
