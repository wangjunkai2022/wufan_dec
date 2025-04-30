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
/* compiled from: WufunMainGamesItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class me0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22511a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22512b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22513c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f22514d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f22515e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22516f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22517g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22518h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22519i;

    private me0(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f22511a = linearLayout;
        this.f22512b = simpleDraweeView;
        this.f22513c = simpleDraweeView2;
        this.f22514d = simpleDraweeView3;
        this.f22515e = simpleDraweeView4;
        this.f22516f = textView;
        this.f22517g = textView2;
        this.f22518h = textView3;
        this.f22519i = textView4;
    }

    @NonNull
    public static me0 a(@NonNull View view) {
        int i2 = R.id.appIcon1;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon1);
        if (simpleDraweeView != null) {
            i2 = R.id.appIcon2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon2);
            if (simpleDraweeView2 != null) {
                i2 = R.id.appIcon3;
                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon3);
                if (simpleDraweeView3 != null) {
                    i2 = R.id.appIcon4;
                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon4);
                    if (simpleDraweeView4 != null) {
                        i2 = R.id.appname1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname1);
                        if (textView != null) {
                            i2 = R.id.appname2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname2);
                            if (textView2 != null) {
                                i2 = R.id.appname3;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appname3);
                                if (textView3 != null) {
                                    i2 = R.id.appname4;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.appname4);
                                    if (textView4 != null) {
                                        return new me0((LinearLayout) view, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, textView, textView2, textView3, textView4);
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
    public static me0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static me0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufun_main_games_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22511a;
    }
}
