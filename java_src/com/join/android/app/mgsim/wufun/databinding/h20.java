package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentListView;
import java.util.Objects;
/* compiled from: MgViewForumGroupHeaderBinding.java */
/* loaded from: classes3.dex */
public final class h20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f20656a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20657b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f20658c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20659d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20660e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20661f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f20662g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f20663h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f20664i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f20665j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f20666k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f20667l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f20668m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20669n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final WrapContentListView f20670o;

    private h20(@NonNull View view, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull SimpleDraweeView simpleDraweeView5, @NonNull SimpleDraweeView simpleDraweeView6, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull WrapContentListView wrapContentListView) {
        this.f20656a = view;
        this.f20657b = imageView;
        this.f20658c = relativeLayout;
        this.f20659d = textView;
        this.f20660e = textView2;
        this.f20661f = textView3;
        this.f20662g = simpleDraweeView;
        this.f20663h = simpleDraweeView2;
        this.f20664i = simpleDraweeView3;
        this.f20665j = simpleDraweeView4;
        this.f20666k = simpleDraweeView5;
        this.f20667l = simpleDraweeView6;
        this.f20668m = linearLayout;
        this.f20669n = textView4;
        this.f20670o = wrapContentListView;
    }

    @NonNull
    public static h20 a(@NonNull View view) {
        int i2 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
        if (imageView != null) {
            i2 = R.id.arrowParent;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.arrowParent);
            if (relativeLayout != null) {
                i2 = R.id.count;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
                if (textView != null) {
                    i2 = R.id.desc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
                    if (textView2 != null) {
                        i2 = R.id.follow;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.follow);
                        if (textView3 != null) {
                            i2 = R.id.icon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                            if (simpleDraweeView != null) {
                                i2 = R.id.img1;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img1);
                                if (simpleDraweeView2 != null) {
                                    i2 = R.id.img2;
                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img2);
                                    if (simpleDraweeView3 != null) {
                                        i2 = R.id.img3;
                                        SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img3);
                                        if (simpleDraweeView4 != null) {
                                            i2 = R.id.img4;
                                            SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img4);
                                            if (simpleDraweeView5 != null) {
                                                i2 = R.id.img5;
                                                SimpleDraweeView simpleDraweeView6 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img5);
                                                if (simpleDraweeView6 != null) {
                                                    i2 = R.id.memberLL;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.memberLL);
                                                    if (linearLayout != null) {
                                                        i2 = R.id.name;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                                        if (textView4 != null) {
                                                            i2 = R.id.wrapListView;
                                                            WrapContentListView wrapContentListView = (WrapContentListView) ViewBindings.findChildViewById(view, R.id.wrapListView);
                                                            if (wrapContentListView != null) {
                                                                return new h20(view, imageView, relativeLayout, textView, textView2, textView3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, simpleDraweeView5, simpleDraweeView6, linearLayout, textView4, wrapContentListView);
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
    public static h20 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.mg_view_forum_group_header, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f20656a;
    }
}
