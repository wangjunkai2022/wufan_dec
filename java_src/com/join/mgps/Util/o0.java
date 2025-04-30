package com.join.mgps.Util;

import android.os.Handler;
import android.os.Message;
import androidx.fragment.app.Fragment;
import com.join.mgps.customview.LoopViewPager;
import java.lang.ref.WeakReference;
/* compiled from: ImageHandler.java */
/* loaded from: classes3.dex */
public class o0 extends Handler {

    /* renamed from: c  reason: collision with root package name */
    public static final int f27722c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27723d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f27724e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static final int f27725f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final long f27726g = 5000;

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<a> f27727a;

    /* renamed from: b  reason: collision with root package name */
    private int f27728b = 0;

    /* compiled from: ImageHandler.java */
    /* loaded from: classes3.dex */
    public static class a extends Fragment {

        /* renamed from: a  reason: collision with root package name */
        protected o0 f27729a;

        /* renamed from: b  reason: collision with root package name */
        protected LoopViewPager f27730b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public o0(WeakReference<? extends a> weakReference) {
        this.f27727a = weakReference;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        a aVar = this.f27727a.get();
        if (aVar == null) {
            return;
        }
        if (aVar.f27729a.hasMessages(1)) {
            aVar.f27729a.removeMessages(1);
        }
        int i2 = message.what;
        if (i2 == 1) {
            LoopViewPager loopViewPager = aVar.f27730b;
            if (loopViewPager != null && loopViewPager.getAdapter() != null) {
                aVar.f27730b.setCurrentItem(aVar.f27730b.getCurrentItem() + 1);
            }
            aVar.f27729a.sendEmptyMessageDelayed(1, 5000L);
        } else if (i2 == 3) {
            aVar.f27729a.sendEmptyMessageDelayed(1, 5000L);
        } else if (i2 != 4) {
        } else {
            this.f27728b = message.arg1;
            aVar.f27729a.sendEmptyMessageDelayed(1, 5000L);
        }
    }
}
