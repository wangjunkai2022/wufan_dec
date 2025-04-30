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
import com.join.mgps.customview.XListView2;
/* compiled from: MyPapaLayoutBinding.java */
/* loaded from: classes3.dex */
public final class x40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26422a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f26423b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26424c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26425d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f26426e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26427f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26428g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f26429h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26430i;

    private x40(@NonNull RelativeLayout relativeLayout, @NonNull XListView2 xListView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.f26422a = relativeLayout;
        this.f26423b = xListView2;
        this.f26424c = imageView;
        this.f26425d = linearLayout;
        this.f26426e = button;
        this.f26427f = textView;
        this.f26428g = linearLayout2;
        this.f26429h = imageView2;
        this.f26430i = textView2;
    }

    @NonNull
    public static x40 a(@NonNull View view) {
        int i2 = R.id.classifyListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.classifyListView);
        if (xListView2 != null) {
            i2 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
            if (imageView != null) {
                i2 = R.id.noneLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.noneLayout);
                if (linearLayout != null) {
                    i2 = R.id.setNetwork;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                    if (button != null) {
                        i2 = R.id.textView3;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                        if (textView != null) {
                            i2 = R.id.topTip;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topTip);
                            if (linearLayout2 != null) {
                                i2 = R.id.topTipClose;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.topTipClose);
                                if (imageView2 != null) {
                                    i2 = R.id.toptipText;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.toptipText);
                                    if (textView2 != null) {
                                        return new x40((RelativeLayout) view, xListView2, imageView, linearLayout, button, textView, linearLayout2, imageView2, textView2);
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
    public static x40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_papa_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26422a;
    }
}
