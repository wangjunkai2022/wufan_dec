package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityMygameEditBinding.java */
/* loaded from: classes3.dex */
public final class f1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19957a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19958b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19959c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f19960d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f19961e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f19962f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final XListView2 f19963g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f19964h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19965i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f19966j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19967k;

    private f1(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull ImageView imageView, @NonNull View view, @NonNull XListView2 xListView2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull Button button2, @NonNull TextView textView3) {
        this.f19957a = linearLayout;
        this.f19958b = textView;
        this.f19959c = textView2;
        this.f19960d = button;
        this.f19961e = imageView;
        this.f19962f = view;
        this.f19963g = xListView2;
        this.f19964h = imageView2;
        this.f19965i = linearLayout2;
        this.f19966j = button2;
        this.f19967k = textView3;
    }

    @NonNull
    public static f1 a(@NonNull View view) {
        int i2 = R.id.editAll;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editAll);
        if (textView != null) {
            i2 = R.id.editCancel;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.editCancel);
            if (textView2 != null) {
                i2 = R.id.editGameNumber;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.editGameNumber);
                if (button != null) {
                    i2 = R.id.isSelector;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.isSelector);
                    if (imageView != null) {
                        i2 = R.id.lineTop;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineTop);
                        if (findChildViewById != null) {
                            i2 = R.id.listView;
                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
                            if (xListView2 != null) {
                                i2 = R.id.lodingBackImage;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
                                if (imageView2 != null) {
                                    i2 = R.id.noneLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.noneLayout);
                                    if (linearLayout != null) {
                                        i2 = R.id.setNetwork;
                                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                                        if (button2 != null) {
                                            i2 = R.id.textView3;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                                            if (textView3 != null) {
                                                return new f1((LinearLayout) view, textView, textView2, button, imageView, findChildViewById, xListView2, imageView2, linearLayout, button2, textView3);
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
    public static f1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_mygame_edit, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19957a;
    }
}
