package com.dingmouren.layoutmanagergroup.banner;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class BannerLayoutManager extends LinearLayoutManager {

    /* renamed from: j  reason: collision with root package name */
    private static final String f11178j = "BannerLayoutManager";

    /* renamed from: a  reason: collision with root package name */
    private LinearSnapHelper f11179a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f11180b;

    /* renamed from: c  reason: collision with root package name */
    private b f11181c;

    /* renamed from: d  reason: collision with root package name */
    private int f11182d;

    /* renamed from: e  reason: collision with root package name */
    private int f11183e;

    /* renamed from: f  reason: collision with root package name */
    private c f11184f;

    /* renamed from: g  reason: collision with root package name */
    private long f11185g;

    /* renamed from: h  reason: collision with root package name */
    private int f11186h;

    /* renamed from: i  reason: collision with root package name */
    private float f11187i;

    /* loaded from: classes2.dex */
    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return BannerLayoutManager.this.f11187i / displayMetrics.densityDpi;
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(View view, int i2);
    }

    /* loaded from: classes2.dex */
    private static class c extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<BannerLayoutManager> f11189a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f11190b;

        public c(BannerLayoutManager bannerLayoutManager) {
            this.f11189a = new WeakReference<>(bannerLayoutManager);
        }

        public void a(boolean z3) {
            this.f11190b = z3;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message == null || !this.f11190b) {
                return;
            }
            int i2 = message.what;
            BannerLayoutManager bannerLayoutManager = this.f11189a.get();
            if (bannerLayoutManager != null) {
                bannerLayoutManager.b().smoothScrollToPosition(i2);
            }
        }
    }

    public BannerLayoutManager(Context context, RecyclerView recyclerView, int i2) {
        super(context);
        this.f11183e = 0;
        this.f11185g = 1000L;
        this.f11187i = 150.0f;
        this.f11179a = new LinearSnapHelper();
        this.f11182d = i2;
        this.f11184f = new c(this);
        this.f11180b = recyclerView;
        setOrientation(0);
        this.f11186h = 0;
    }

    public RecyclerView b() {
        return this.f11180b;
    }

    public void c(b bVar) {
        this.f11181c = bVar;
    }

    public void d(long j4) {
        this.f11185g = j4;
    }

    public void e(float f4) {
        this.f11187i = f4;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f11179a.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
        this.f11184f.a(true);
        Message obtain = Message.obtain();
        obtain.what = this.f11183e + 1;
        this.f11184f.sendMessageDelayed(obtain, this.f11185g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i2) {
        super.onScrollStateChanged(i2);
        if (i2 != 0) {
            if (i2 == 1) {
                this.f11184f.a(false);
                return;
            }
            return;
        }
        LinearSnapHelper linearSnapHelper = this.f11179a;
        if (linearSnapHelper != null) {
            View findSnapView = linearSnapHelper.findSnapView(this);
            int position = getPosition(findSnapView);
            this.f11183e = position;
            b bVar = this.f11181c;
            if (bVar != null) {
                bVar.a(findSnapView, position % this.f11182d);
            }
            this.f11184f.a(true);
            Message obtain = Message.obtain();
            int i4 = this.f11183e + 1;
            this.f11183e = i4;
            obtain.what = i4;
            this.f11184f.sendMessageDelayed(obtain, this.f11185g);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i2);
        startSmoothScroll(aVar);
    }

    public BannerLayoutManager(Context context, RecyclerView recyclerView, int i2, int i4) {
        super(context);
        this.f11183e = 0;
        this.f11185g = 1000L;
        this.f11187i = 150.0f;
        this.f11179a = new LinearSnapHelper();
        this.f11182d = i2;
        this.f11184f = new c(this);
        this.f11180b = recyclerView;
        setOrientation(i4);
        this.f11186h = i4;
    }
}
