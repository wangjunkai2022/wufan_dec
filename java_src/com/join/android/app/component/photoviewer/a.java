package com.join.android.app.component.photoviewer;

import android.graphics.drawable.Animatable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.c;
import com.facebook.imagepipeline.image.f;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import me.relex.photodraweeview.PhotoDraweeView;
import me.relex.photodraweeview.h;
/* compiled from: ImageDetailFragment.java */
/* loaded from: classes.dex */
public class a extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private String f17531a;

    /* renamed from: b  reason: collision with root package name */
    private PhotoDraweeView f17532b;

    /* renamed from: c  reason: collision with root package name */
    private ProgressBar f17533c;

    /* renamed from: d  reason: collision with root package name */
    View.OnLongClickListener f17534d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageDetailFragment.java */
    /* renamed from: com.join.android.app.component.photoviewer.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0139a implements h {
        C0139a() {
        }

        @Override // me.relex.photodraweeview.h
        public void a(View view, float f4, float f5) {
            try {
                a.this.getActivity().finish();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageDetailFragment.java */
    /* loaded from: classes.dex */
    public class b implements c<f> {
        b() {
        }

        @Override // com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
            try {
                Toast.makeText(a.this.getActivity(), "加载失败", 0).show();
            } catch (Exception unused) {
            }
            a.this.f17532b.setScaleType(ImageView.ScaleType.FIT_CENTER);
            a.this.f17532b.setImageResource(R.drawable.main_normal_icon);
            a.this.f17533c.setVisibility(8);
        }

        @Override // com.facebook.drawee.controller.c
        public void c(String str) {
        }

        @Override // com.facebook.drawee.controller.c
        public void e(String str, Object obj) {
        }

        @Override // com.facebook.drawee.controller.c
        public void f(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: g */
        public void d(String str, f fVar, Animatable animatable) {
            a.this.f17533c.setVisibility(8);
            a.this.f17532b.update(fVar.a(), fVar.getHeight());
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: h */
        public void a(String str, f fVar) {
        }
    }

    private void O() {
        try {
            this.f17533c.setVisibility(0);
            this.f17532b.setController(Fresco.newDraweeControllerBuilder().H(new b()).a(MyImageLoader.G(this.f17531a)).E(true).build());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void P() {
    }

    private void Q() {
    }

    public static a R(String str) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        aVar.setArguments(bundle);
        return aVar;
    }

    private void S() {
        this.f17532b.setOnViewTapListener(new C0139a());
        this.f17532b.setOnLongClickListener(this.f17534d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(View.OnLongClickListener onLongClickListener) {
        this.f17534d = onLongClickListener;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f17531a = getArguments() != null ? getArguments().getString("url") : null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_fragment, viewGroup, false);
        this.f17533c = (ProgressBar) inflate.findViewById(R.id.loading);
        this.f17532b = (PhotoDraweeView) inflate.findViewById(R.id.image);
        S();
        return inflate;
    }
}
