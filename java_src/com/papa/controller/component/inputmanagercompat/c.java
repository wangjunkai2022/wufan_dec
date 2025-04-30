package com.papa.controller.component.inputmanagercompat;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.MotionEvent;
import com.papa.controller.component.inputmanagercompat.a;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
/* compiled from: InputManagerV9.java */
/* loaded from: classes4.dex */
public class c implements com.papa.controller.component.inputmanagercompat.a {

    /* renamed from: d  reason: collision with root package name */
    private static final String f54682d = "InputManagerV9";

    /* renamed from: e  reason: collision with root package name */
    private static final int f54683e = 101;

    /* renamed from: f  reason: collision with root package name */
    private static final long f54684f = 3000;

    /* renamed from: g  reason: collision with root package name */
    private static final int f54685g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f54686h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f54687i = 2;

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<long[]> f54688a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<a.b, Handler> f54689b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Handler f54690c = new b(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InputManagerV9.java */
    /* loaded from: classes4.dex */
    public static class a implements Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static Queue<a> f54691d = new ArrayDeque();

        /* renamed from: a  reason: collision with root package name */
        private int f54692a;

        /* renamed from: b  reason: collision with root package name */
        private int f54693b;

        /* renamed from: c  reason: collision with root package name */
        private a.b f54694c;

        private a() {
        }

        static a a(int i2, int i4, a.b bVar) {
            a poll = f54691d.poll();
            if (poll == null) {
                poll = new a();
            }
            poll.f54692a = i2;
            poll.f54693b = i4;
            poll.f54694c = bVar;
            return poll;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f54692a;
            if (i2 == 0) {
                this.f54694c.onInputDeviceAdded(this.f54693b);
            } else if (i2 == 1) {
                this.f54694c.onInputDeviceChanged(this.f54693b);
            } else if (i2 == 2) {
                this.f54694c.onInputDeviceRemoved(this.f54693b);
            }
            f54691d.offer(this);
        }
    }

    /* compiled from: InputManagerV9.java */
    /* loaded from: classes4.dex */
    private static class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<c> f54695a;

        b(c cVar) {
            this.f54695a = new WeakReference<>(cVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            c cVar;
            super.handleMessage(message);
            if (message.what == 101 && (cVar = this.f54695a.get()) != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int size = cVar.f54688a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    long[] jArr = (long[]) cVar.f54688a.valueAt(i2);
                    if (jArr != null && elapsedRealtime - jArr[0] > c.f54684f) {
                        int keyAt = cVar.f54688a.keyAt(i2);
                        if (InputDevice.getDevice(keyAt) == null) {
                            cVar.h(2, keyAt);
                            cVar.f54688a.remove(keyAt);
                        } else {
                            jArr[0] = elapsedRealtime;
                        }
                    }
                }
                sendEmptyMessageDelayed(101, c.f54684f);
            }
        }
    }

    public c() {
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i2, int i4) {
        if (this.f54689b.isEmpty()) {
            return;
        }
        for (a.b bVar : this.f54689b.keySet()) {
            this.f54689b.get(bVar).post(a.a(i2, i4, bVar));
        }
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void a(MotionEvent motionEvent) {
        int deviceId = motionEvent.getDeviceId();
        long[] jArr = this.f54688a.get(deviceId);
        if (jArr == null) {
            h(0, deviceId);
            jArr = new long[1];
            this.f54688a.put(deviceId, jArr);
        }
        jArr[0] = SystemClock.elapsedRealtime();
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void b(a.b bVar) {
        this.f54689b.remove(bVar);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void c(a.b bVar, Handler handler) {
        this.f54689b.remove(bVar);
        if (handler == null) {
            handler = this.f54690c;
        }
        this.f54689b.put(bVar, handler);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public InputDevice d(int i2) {
        return InputDevice.getDevice(i2);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public int[] e() {
        int[] deviceIds = InputDevice.getDeviceIds();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i2 : deviceIds) {
            if (this.f54688a.get(i2) == null) {
                this.f54688a.put(i2, new long[]{elapsedRealtime});
            }
        }
        return deviceIds;
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onPause() {
        this.f54690c.removeMessages(101);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onResume() {
        this.f54690c.sendEmptyMessage(101);
    }
}
