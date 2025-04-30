package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.melnykov.fab.FloatingActionButton;
/* compiled from: MgpapaMainfragmentNewLayoutBinding.java */
/* loaded from: classes3.dex */
public final class v20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25684a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FloatingActionButton f25685b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25686c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25687d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f25688e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XListView2 f25689f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final PtrClassicFrameLayout f25690g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f25691h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f25692i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25693j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f25694k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final View f25695l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f25696m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f25697n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f25698o;

    private v20(@NonNull RelativeLayout relativeLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView3) {
        this.f25684a = relativeLayout;
        this.f25685b = floatingActionButton;
        this.f25686c = imageView;
        this.f25687d = imageView2;
        this.f25688e = simpleDraweeView;
        this.f25689f = xListView2;
        this.f25690g = ptrClassicFrameLayout;
        this.f25691h = imageView3;
        this.f25692i = imageView4;
        this.f25693j = textView;
        this.f25694k = textView2;
        this.f25695l = view;
        this.f25696m = relativeLayout2;
        this.f25697n = relativeLayout3;
        this.f25698o = textView3;
    }

    @NonNull
    public static v20 a(@NonNull View view) {
        int i2 = R.id.coinFloatad;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, R.id.coinFloatad);
        if (floatingActionButton != null) {
            i2 = R.id.imageView2;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
            if (imageView != null) {
                i2 = R.id.imageView3;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView3);
                if (imageView2 != null) {
                    i2 = R.id.ivFloatad;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivFloatad);
                    if (simpleDraweeView != null) {
                        i2 = R.id.listview;
                        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
                        if (xListView2 != null) {
                            i2 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i2 = R.id.movetoTop;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.movetoTop);
                                if (imageView3 != null) {
                                    i2 = R.id.search;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                    if (imageView4 != null) {
                                        i2 = R.id.searchBack;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.searchBack);
                                        if (textView != null) {
                                            i2 = R.id.searchContent;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.searchContent);
                                            if (textView2 != null) {
                                                i2 = R.id.statubar;
                                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
                                                if (findChildViewById != null) {
                                                    i2 = R.id.title;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.title);
                                                    if (relativeLayout != null) {
                                                        i2 = R.id.titleSearch;
                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.titleSearch);
                                                        if (relativeLayout2 != null) {
                                                            i2 = R.id.updateNotice;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.updateNotice);
                                                            if (textView3 != null) {
                                                                return new v20((RelativeLayout) view, floatingActionButton, imageView, imageView2, simpleDraweeView, xListView2, ptrClassicFrameLayout, imageView3, imageView4, textView, textView2, findChildViewById, relativeLayout, relativeLayout2, textView3);
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
    public static v20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_mainfragment_new_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25684a;
    }
}
