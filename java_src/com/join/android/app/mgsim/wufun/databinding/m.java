package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ActivityCollectionModuleSixBinding.java */
/* loaded from: classes3.dex */
public final class m implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22249a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22250b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22251c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f22252d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f22253e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22254f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f22255g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f22256h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f22257i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f22258j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final PtrClassicFrameLayout f22259k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f22260l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f22261m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22262n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ScrollTextViewLayout f22263o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f22264p;

    private m(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull XListView2 xListView2, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView2, @NonNull ScrollTextViewLayout scrollTextViewLayout, @NonNull ImageView imageView6) {
        this.f22249a = relativeLayout;
        this.f22250b = imageView;
        this.f22251c = textView;
        this.f22252d = xListView2;
        this.f22253e = relativeLayout2;
        this.f22254f = imageView2;
        this.f22255g = linearLayout;
        this.f22256h = imageView3;
        this.f22257i = imageView4;
        this.f22258j = imageView5;
        this.f22259k = ptrClassicFrameLayout;
        this.f22260l = relativeLayout3;
        this.f22261m = relativeLayout4;
        this.f22262n = textView2;
        this.f22263o = scrollTextViewLayout;
        this.f22264p = imageView6;
    }

    @NonNull
    public static m a(@NonNull View view) {
        int i2 = R.id.back_image_rl;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image_rl);
        if (imageView != null) {
            i2 = R.id.biground;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.biground);
            if (textView != null) {
                i2 = R.id.breakListView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.breakListView);
                if (xListView2 != null) {
                    i2 = R.id.downLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.downLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.download_bg;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.download_bg);
                        if (imageView2 != null) {
                            i2 = R.id.downloadLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadLayout);
                            if (linearLayout != null) {
                                i2 = R.id.downloadLine;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.downloadLine);
                                if (imageView3 != null) {
                                    i2 = R.id.hasNewFinishedGameImage;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.hasNewFinishedGameImage);
                                    if (imageView4 != null) {
                                        i2 = R.id.imageLoading;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageLoading);
                                        if (imageView5 != null) {
                                            i2 = R.id.mPtrFrame;
                                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                                            if (ptrClassicFrameLayout != null) {
                                                RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                i2 = R.id.moduleSixTitleRl;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.moduleSixTitleRl);
                                                if (relativeLayout3 != null) {
                                                    i2 = R.id.scroll_text;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.scroll_text);
                                                    if (textView2 != null) {
                                                        i2 = R.id.scroll_text_layout;
                                                        ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(view, R.id.scroll_text_layout);
                                                        if (scrollTextViewLayout != null) {
                                                            i2 = R.id.title_normal_search_img_rl;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.title_normal_search_img_rl);
                                                            if (imageView6 != null) {
                                                                return new m(relativeLayout2, imageView, textView, xListView2, relativeLayout, imageView2, linearLayout, imageView3, imageView4, imageView5, ptrClassicFrameLayout, relativeLayout2, relativeLayout3, textView2, scrollTextViewLayout, imageView6);
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
    public static m c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_collection_module_six, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22249a;
    }
}
