package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.util.Pools;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;
/* loaded from: classes.dex */
public final class AsyncLayoutInflater {

    /* renamed from: e  reason: collision with root package name */
    private static final String f1591e = "AsyncLayoutInflater";

    /* renamed from: a  reason: collision with root package name */
    LayoutInflater f1592a;

    /* renamed from: d  reason: collision with root package name */
    private Handler.Callback f1595d = new Handler.Callback() { // from class: androidx.asynclayoutinflater.view.AsyncLayoutInflater.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            InflateRequest inflateRequest = (InflateRequest) message.obj;
            if (inflateRequest.f1601d == null) {
                inflateRequest.f1601d = AsyncLayoutInflater.this.f1592a.inflate(inflateRequest.f1600c, inflateRequest.f1599b, false);
            }
            inflateRequest.f1602e.onInflateFinished(inflateRequest.f1601d, inflateRequest.f1600c, inflateRequest.f1599b);
            AsyncLayoutInflater.this.f1594c.releaseRequest(inflateRequest);
            return true;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    Handler f1593b = new Handler(this.f1595d);

    /* renamed from: c  reason: collision with root package name */
    InflateThread f1594c = InflateThread.getInstance();

    /* loaded from: classes.dex */
    private static class BasicInflater extends LayoutInflater {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f1597a = {"android.widget.", "android.webkit.", "android.app."};

        BasicInflater(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public LayoutInflater cloneInContext(Context context) {
            return new BasicInflater(context);
        }

        @Override // android.view.LayoutInflater
        protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
            View createView;
            for (String str2 : f1597a) {
                try {
                    createView = createView(str, str2, attributeSet);
                } catch (ClassNotFoundException unused) {
                }
                if (createView != null) {
                    return createView;
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InflateRequest {

        /* renamed from: a  reason: collision with root package name */
        AsyncLayoutInflater f1598a;

        /* renamed from: b  reason: collision with root package name */
        ViewGroup f1599b;

        /* renamed from: c  reason: collision with root package name */
        int f1600c;

        /* renamed from: d  reason: collision with root package name */
        View f1601d;

        /* renamed from: e  reason: collision with root package name */
        OnInflateFinishedListener f1602e;

        InflateRequest() {
        }
    }

    /* loaded from: classes.dex */
    private static class InflateThread extends Thread {

        /* renamed from: c  reason: collision with root package name */
        private static final InflateThread f1603c;

        /* renamed from: a  reason: collision with root package name */
        private ArrayBlockingQueue<InflateRequest> f1604a = new ArrayBlockingQueue<>(10);

        /* renamed from: b  reason: collision with root package name */
        private Pools.SynchronizedPool<InflateRequest> f1605b = new Pools.SynchronizedPool<>(10);

        static {
            InflateThread inflateThread = new InflateThread();
            f1603c = inflateThread;
            inflateThread.start();
        }

        private InflateThread() {
        }

        public static InflateThread getInstance() {
            return f1603c;
        }

        public void enqueue(InflateRequest inflateRequest) {
            try {
                this.f1604a.put(inflateRequest);
            } catch (InterruptedException e4) {
                throw new RuntimeException("Failed to enqueue async inflate request", e4);
            }
        }

        public InflateRequest obtainRequest() {
            InflateRequest acquire = this.f1605b.acquire();
            return acquire == null ? new InflateRequest() : acquire;
        }

        public void releaseRequest(InflateRequest inflateRequest) {
            inflateRequest.f1602e = null;
            inflateRequest.f1598a = null;
            inflateRequest.f1599b = null;
            inflateRequest.f1600c = 0;
            inflateRequest.f1601d = null;
            this.f1605b.release(inflateRequest);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                runInner();
            }
        }

        public void runInner() {
            try {
                InflateRequest take = this.f1604a.take();
                try {
                    take.f1601d = take.f1598a.f1592a.inflate(take.f1600c, take.f1599b, false);
                } catch (RuntimeException unused) {
                }
                Message.obtain(take.f1598a.f1593b, 0, take).sendToTarget();
            } catch (InterruptedException unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnInflateFinishedListener {
        void onInflateFinished(@NonNull View view, @LayoutRes int i2, @Nullable ViewGroup viewGroup);
    }

    public AsyncLayoutInflater(@NonNull Context context) {
        this.f1592a = new BasicInflater(context);
    }

    @UiThread
    public void inflate(@LayoutRes int i2, @Nullable ViewGroup viewGroup, @NonNull OnInflateFinishedListener onInflateFinishedListener) {
        Objects.requireNonNull(onInflateFinishedListener, "callback argument may not be null!");
        InflateRequest obtainRequest = this.f1594c.obtainRequest();
        obtainRequest.f1598a = this;
        obtainRequest.f1600c = i2;
        obtainRequest.f1599b = viewGroup;
        obtainRequest.f1602e = onInflateFinishedListener;
        this.f1594c.enqueue(obtainRequest);
    }
}
