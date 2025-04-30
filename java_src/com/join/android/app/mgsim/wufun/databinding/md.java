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
/* compiled from: DiscoverListItemBinding.java */
/* loaded from: classes3.dex */
public final class md implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22474a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22475b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22476c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22477d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f22478e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f22479f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22480g;

    private md(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.f22474a = linearLayout;
        this.f22475b = textView;
        this.f22476c = textView2;
        this.f22477d = textView3;
        this.f22478e = simpleDraweeView;
        this.f22479f = linearLayout2;
        this.f22480g = textView4;
    }

    @NonNull
    public static md a(@NonNull View view) {
        int i2 = R.id.commentNumber;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.commentNumber);
        if (textView != null) {
            i2 = R.id.content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView2 != null) {
                i2 = R.id.gameType;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameType);
                if (textView3 != null) {
                    i2 = R.id.image;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
                    if (simpleDraweeView != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i2 = R.id.seeNumber;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.seeNumber);
                        if (textView4 != null) {
                            return new md(linearLayout, textView, textView2, textView3, simpleDraweeView, linearLayout, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static md c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static md d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.discover_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22474a;
    }
}
