package b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class b implements ServiceConnection {

    /* renamed from: c  reason: collision with root package name */
    public static final ThreadPoolExecutor f8193c = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    /* renamed from: a  reason: collision with root package name */
    public boolean f8194a = false;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f8195b = new LinkedBlockingQueue<>(1);

    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IBinder f8196a;

        public a(IBinder iBinder) {
            this.f8196a = iBinder;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                System.currentTimeMillis();
                b.this.f8195b.offer(this.f8196a);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        f8193c.execute(new a(iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        System.currentTimeMillis();
    }
}
