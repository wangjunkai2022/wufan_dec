package com.join.mgps.Util;

import android.os.Handler;
import android.os.Message;
import com.BaseActivity;
import com.join.mgps.customview.LoopViewPager;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ImageHandlerDetial extends Handler {

    /* renamed from: c  reason: collision with root package name */
    public static final int f27388c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27389d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f27390e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static final int f27391f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final long f27392g = 5000;

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<AdFragment> f27393a;

    /* renamed from: b  reason: collision with root package name */
    private int f27394b = 0;

    /* loaded from: classes3.dex */
    public static class AdFragment extends BaseActivity {

        /* renamed from: a  reason: collision with root package name */
        protected ImageHandlerDetial f27395a;

        /* renamed from: b  reason: collision with root package name */
        protected LoopViewPager f27396b;

        public LoopViewPager E0() {
            return this.f27396b;
        }

        public void F0(LoopViewPager loopViewPager) {
            this.f27396b = loopViewPager;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImageHandlerDetial(WeakReference<? extends AdFragment> weakReference) {
        this.f27393a = weakReference;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        AdFragment adFragment = this.f27393a.get();
        if (adFragment == null) {
            return;
        }
        if (adFragment.f27395a.hasMessages(1)) {
            adFragment.f27395a.removeMessages(1);
        }
        int i2 = message.what;
        if (i2 == 1) {
            LoopViewPager loopViewPager = adFragment.f27396b;
            if (loopViewPager != null && loopViewPager.getAdapter() != null) {
                adFragment.f27396b.setCurrentItem(adFragment.f27396b.getCurrentItem() + 1);
            }
            adFragment.f27395a.sendEmptyMessageDelayed(1, 5000L);
        } else if (i2 == 3) {
            adFragment.f27395a.sendEmptyMessageDelayed(1, 5000L);
        } else if (i2 != 4) {
        } else {
            this.f27394b = message.arg1;
            adFragment.f27395a.sendEmptyMessageDelayed(1, 5000L);
        }
    }
}
