package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: ChoiceMainadLayoutBinding.java */
/* loaded from: classes3.dex */
public final class y5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26792a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26793b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final DownloadViewStroke f26794c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f26795d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26796e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26797f;

    private y5(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull DownloadViewStroke downloadViewStroke, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f26792a = relativeLayout;
        this.f26793b = simpleDraweeView;
        this.f26794c = downloadViewStroke;
        this.f26795d = simpleDraweeView2;
        this.f26796e = textView;
        this.f26797f = textView2;
    }

    @NonNull
    public static y5 a(@NonNull View view) {
        int i2 = R.id.adImageView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.adImageView);
        if (simpleDraweeView != null) {
            i2 = R.id.downloadView;
            DownloadViewStroke downloadViewStroke = (DownloadViewStroke) ViewBindings.findChildViewById(view, R.id.downloadView);
            if (downloadViewStroke != null) {
                i2 = R.id.gameIcon;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.gameInfo;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameInfo);
                    if (textView != null) {
                        i2 = R.id.gameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                        if (textView2 != null) {
                            return new y5((RelativeLayout) view, simpleDraweeView, downloadViewStroke, simpleDraweeView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static y5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_mainad_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26792a;
    }
}
