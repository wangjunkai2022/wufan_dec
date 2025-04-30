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
/* compiled from: DiscoverWeiboListItemBinding.java */
/* loaded from: classes3.dex */
public final class nd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22856a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22857b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22858c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22859d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22860e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f22861f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22862g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22863h;

    private nd(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22856a = linearLayout;
        this.f22857b = textView;
        this.f22858c = textView2;
        this.f22859d = linearLayout2;
        this.f22860e = textView3;
        this.f22861f = simpleDraweeView;
        this.f22862g = textView4;
        this.f22863h = textView5;
    }

    @NonNull
    public static nd a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.imagTip;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.imagTip);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i2 = R.id.time;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                if (textView3 != null) {
                    i2 = R.id.userImg;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userImg);
                    if (simpleDraweeView != null) {
                        i2 = R.id.userName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                        if (textView4 != null) {
                            i2 = R.id.vidioTip;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.vidioTip);
                            if (textView5 != null) {
                                return new nd(linearLayout, textView, textView2, linearLayout, textView3, simpleDraweeView, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.discover_weibo_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22856a;
    }
}
