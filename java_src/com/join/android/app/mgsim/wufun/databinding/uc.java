package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogPermissCustomerAlertBinding.java */
/* loaded from: classes3.dex */
public final class uc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25491a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ScrollView f25492b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f25493c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f25494d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final WebView f25495e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25496f;

    private uc(@NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull Button button, @NonNull Button button2, @NonNull WebView webView, @NonNull TextView textView) {
        this.f25491a = linearLayout;
        this.f25492b = scrollView;
        this.f25493c = button;
        this.f25494d = button2;
        this.f25495e = webView;
        this.f25496f = textView;
    }

    @NonNull
    public static uc a(@NonNull View view) {
        int i2 = R.id.dialog_app_update_sv;
        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.dialog_app_update_sv);
        if (scrollView != null) {
            i2 = R.id.dialog_button_cancel;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancel);
            if (button != null) {
                i2 = R.id.dialog_button_ok;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
                if (button2 != null) {
                    i2 = R.id.info;
                    WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.info);
                    if (webView != null) {
                        i2 = R.id.tip_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                        if (textView != null) {
                            return new uc((LinearLayout) view, scrollView, button, button2, webView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_permiss_customer_alert, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25491a;
    }
}
