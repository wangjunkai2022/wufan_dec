package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogAppUpdateBinding.java */
/* loaded from: classes3.dex */
public final class ma implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22426a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f22427b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22428c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22429d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f22430e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22431f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ScrollView f22432g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final WebView f22433h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22434i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f22435j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f22436k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f22437l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f22438m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final Button f22439n;

    private ma(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull ScrollView scrollView, @NonNull WebView webView, @NonNull TextView textView, @NonNull Button button2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull Button button3) {
        this.f22426a = relativeLayout;
        this.f22427b = button;
        this.f22428c = imageView;
        this.f22429d = linearLayout;
        this.f22430e = relativeLayout2;
        this.f22431f = imageView2;
        this.f22432g = scrollView;
        this.f22433h = webView;
        this.f22434i = textView;
        this.f22435j = button2;
        this.f22436k = simpleDraweeView;
        this.f22437l = relativeLayout3;
        this.f22438m = relativeLayout4;
        this.f22439n = button3;
    }

    @NonNull
    public static ma a(@NonNull View view) {
        int i2 = R.id.cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.cancel);
        if (button != null) {
            i2 = R.id.dialog_app_update_bottom_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_app_update_bottom_img);
            if (imageView != null) {
                i2 = R.id.dialog_app_update_bottom_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.dialog_app_update_bottom_ll);
                if (linearLayout != null) {
                    i2 = R.id.dialog_app_update_bottom_rl;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.dialog_app_update_bottom_rl);
                    if (relativeLayout != null) {
                        i2 = R.id.dialog_app_update_header_img;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_app_update_header_img);
                        if (imageView2 != null) {
                            i2 = R.id.dialog_app_update_sv;
                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.dialog_app_update_sv);
                            if (scrollView != null) {
                                i2 = R.id.info;
                                WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.info);
                                if (webView != null) {
                                    i2 = R.id.installNotice;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.installNotice);
                                    if (textView != null) {
                                        i2 = R.id.newClosed;
                                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.newClosed);
                                        if (button2 != null) {
                                            i2 = R.id.newUpdateImage;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.newUpdateImage);
                                            if (simpleDraweeView != null) {
                                                i2 = R.id.newVersion;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.newVersion);
                                                if (relativeLayout2 != null) {
                                                    i2 = R.id.oldVersion;
                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.oldVersion);
                                                    if (relativeLayout3 != null) {
                                                        i2 = R.id.updateNow;
                                                        Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.updateNow);
                                                        if (button3 != null) {
                                                            return new ma((RelativeLayout) view, button, imageView, linearLayout, relativeLayout, imageView2, scrollView, webView, textView, button2, simpleDraweeView, relativeLayout2, relativeLayout3, button3);
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
    public static ma c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ma d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_app_update, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22426a;
    }
}
