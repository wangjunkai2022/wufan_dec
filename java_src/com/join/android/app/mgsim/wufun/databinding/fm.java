package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetialMoreGiftTopLayoutBinding.java */
/* loaded from: classes3.dex */
public final class fm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20190a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20191b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20192c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f20193d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20194e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20195f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f20196g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f20197h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f20198i;

    private fm(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button, @NonNull View view, @NonNull LinearLayout linearLayout2) {
        this.f20190a = linearLayout;
        this.f20191b = textView;
        this.f20192c = textView2;
        this.f20193d = simpleDraweeView;
        this.f20194e = textView3;
        this.f20195f = textView4;
        this.f20196g = button;
        this.f20197h = view;
        this.f20198i = linearLayout2;
    }

    @NonNull
    public static fm a(@NonNull View view) {
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
                                i2 = R.id.line;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                                if (findChildViewById != null) {
                                    i2 = R.id.tipsLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                    if (linearLayout != null) {
                                        return new fm((LinearLayout) view, textView, textView2, simpleDraweeView, textView3, textView4, button, findChildViewById, linearLayout);
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
    public static fm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_more_gift_top_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20190a;
    }
}
