package androidx.recyclerview.widget;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
class MessageThreadUtil<T> implements ThreadUtil<T> {

    /* renamed from: androidx.recyclerview.widget.MessageThreadUtil$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements ThreadUtil.MainThreadCallback<T> {

        /* renamed from: f  reason: collision with root package name */
        static final int f7035f = 1;

        /* renamed from: g  reason: collision with root package name */
        static final int f7036g = 2;

        /* renamed from: h  reason: collision with root package name */
        static final int f7037h = 3;

        /* renamed from: a  reason: collision with root package name */
        final MessageQueue f7038a = new MessageQueue();

        /* renamed from: b  reason: collision with root package name */
        private final Handler f7039b = new Handler(Looper.getMainLooper());

        /* renamed from: c  reason: collision with root package name */
        private Runnable f7040c = new Runnable() { // from class: androidx.recyclerview.widget.MessageThreadUtil.1.1
            @Override // java.lang.Runnable
            public void run() {
                SyncQueueItem a4 = AnonymousClass1.this.f7038a.a();
                while (a4 != null) {
                    int i2 = a4.what;
                    if (i2 == 1) {
                        AnonymousClass1.this.f7041d.updateItemCount(a4.arg1, a4.arg2);
                    } else if (i2 == 2) {
                        AnonymousClass1.this.f7041d.addTile(a4.arg1, (TileList.Tile) a4.data);
                    } else if (i2 != 3) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Unsupported message, what=");
                        sb.append(a4.what);
                    } else {
                        AnonymousClass1.this.f7041d.removeTile(a4.arg1, a4.arg2);
                    }
                    a4 = AnonymousClass1.this.f7038a.a();
                }
            }
        };

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ThreadUtil.MainThreadCallback f7041d;

        AnonymousClass1(ThreadUtil.MainThreadCallback mainThreadCallback) {
            this.f7041d = mainThreadCallback;
        }

        private void a(SyncQueueItem syncQueueItem) {
            this.f7038a.c(syncQueueItem);
            this.f7039b.post(this.f7040c);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i2, TileList.Tile<T> tile) {
            a(SyncQueueItem.c(2, i2, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i2, int i4) {
            a(SyncQueueItem.a(3, i2, i4));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i2, int i4) {
            a(SyncQueueItem.a(1, i2, i4));
        }
    }

    /* renamed from: androidx.recyclerview.widget.MessageThreadUtil$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: g  reason: collision with root package name */
        static final int f7044g = 1;

        /* renamed from: h  reason: collision with root package name */
        static final int f7045h = 2;

        /* renamed from: i  reason: collision with root package name */
        static final int f7046i = 3;

        /* renamed from: j  reason: collision with root package name */
        static final int f7047j = 4;

        /* renamed from: a  reason: collision with root package name */
        final MessageQueue f7048a = new MessageQueue();

        /* renamed from: b  reason: collision with root package name */
        private final Executor f7049b = AsyncTask.THREAD_POOL_EXECUTOR;

        /* renamed from: c  reason: collision with root package name */
        AtomicBoolean f7050c = new AtomicBoolean(false);

        /* renamed from: d  reason: collision with root package name */
        private Runnable f7051d = new Runnable() { // from class: androidx.recyclerview.widget.MessageThreadUtil.2.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    SyncQueueItem a4 = AnonymousClass2.this.f7048a.a();
                    if (a4 == null) {
                        AnonymousClass2.this.f7050c.set(false);
                        return;
                    }
                    int i2 = a4.what;
                    if (i2 == 1) {
                        AnonymousClass2.this.f7048a.b(1);
                        AnonymousClass2.this.f7052e.refresh(a4.arg1);
                    } else if (i2 == 2) {
                        AnonymousClass2.this.f7048a.b(2);
                        AnonymousClass2.this.f7048a.b(3);
                        AnonymousClass2.this.f7052e.updateRange(a4.arg1, a4.arg2, a4.arg3, a4.arg4, a4.arg5);
                    } else if (i2 == 3) {
                        AnonymousClass2.this.f7052e.loadTile(a4.arg1, a4.arg2);
                    } else if (i2 != 4) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Unsupported message, what=");
                        sb.append(a4.what);
                    } else {
                        AnonymousClass2.this.f7052e.recycleTile((TileList.Tile) a4.data);
                    }
                }
            }
        };

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ThreadUtil.BackgroundCallback f7052e;

        AnonymousClass2(ThreadUtil.BackgroundCallback backgroundCallback) {
            this.f7052e = backgroundCallback;
        }

        private void a() {
            if (this.f7050c.compareAndSet(false, true)) {
                this.f7049b.execute(this.f7051d);
            }
        }

        private void b(SyncQueueItem syncQueueItem) {
            this.f7048a.c(syncQueueItem);
            a();
        }

        private void c(SyncQueueItem syncQueueItem) {
            this.f7048a.d(syncQueueItem);
            a();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i2, int i4) {
            b(SyncQueueItem.a(3, i2, i4));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            b(SyncQueueItem.c(4, 0, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i2) {
            c(SyncQueueItem.c(1, i2, null));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i2, int i4, int i5, int i6, int i7) {
            c(SyncQueueItem.b(2, i2, i4, i5, i6, i7, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class MessageQueue {

        /* renamed from: a  reason: collision with root package name */
        private SyncQueueItem f7055a;

        MessageQueue() {
        }

        synchronized SyncQueueItem a() {
            SyncQueueItem syncQueueItem = this.f7055a;
            if (syncQueueItem == null) {
                return null;
            }
            this.f7055a = syncQueueItem.f7058a;
            return syncQueueItem;
        }

        synchronized void b(int i2) {
            SyncQueueItem syncQueueItem;
            while (true) {
                syncQueueItem = this.f7055a;
                if (syncQueueItem == null || syncQueueItem.what != i2) {
                    break;
                }
                this.f7055a = syncQueueItem.f7058a;
                syncQueueItem.d();
            }
            if (syncQueueItem != null) {
                SyncQueueItem syncQueueItem2 = syncQueueItem.f7058a;
                while (syncQueueItem2 != null) {
                    SyncQueueItem syncQueueItem3 = syncQueueItem2.f7058a;
                    if (syncQueueItem2.what == i2) {
                        syncQueueItem.f7058a = syncQueueItem3;
                        syncQueueItem2.d();
                    } else {
                        syncQueueItem = syncQueueItem2;
                    }
                    syncQueueItem2 = syncQueueItem3;
                }
            }
        }

        synchronized void c(SyncQueueItem syncQueueItem) {
            SyncQueueItem syncQueueItem2 = this.f7055a;
            if (syncQueueItem2 == null) {
                this.f7055a = syncQueueItem;
                return;
            }
            while (true) {
                SyncQueueItem syncQueueItem3 = syncQueueItem2.f7058a;
                if (syncQueueItem3 == null) {
                    syncQueueItem2.f7058a = syncQueueItem;
                    return;
                }
                syncQueueItem2 = syncQueueItem3;
            }
        }

        synchronized void d(SyncQueueItem syncQueueItem) {
            syncQueueItem.f7058a = this.f7055a;
            this.f7055a = syncQueueItem;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SyncQueueItem {

        /* renamed from: b  reason: collision with root package name */
        private static SyncQueueItem f7056b;

        /* renamed from: c  reason: collision with root package name */
        private static final Object f7057c = new Object();

        /* renamed from: a  reason: collision with root package name */
        SyncQueueItem f7058a;
        public int arg1;
        public int arg2;
        public int arg3;
        public int arg4;
        public int arg5;
        public Object data;
        public int what;

        SyncQueueItem() {
        }

        static SyncQueueItem a(int i2, int i4, int i5) {
            return b(i2, i4, i5, 0, 0, 0, null);
        }

        static SyncQueueItem b(int i2, int i4, int i5, int i6, int i7, int i8, Object obj) {
            SyncQueueItem syncQueueItem;
            synchronized (f7057c) {
                syncQueueItem = f7056b;
                if (syncQueueItem == null) {
                    syncQueueItem = new SyncQueueItem();
                } else {
                    f7056b = syncQueueItem.f7058a;
                    syncQueueItem.f7058a = null;
                }
                syncQueueItem.what = i2;
                syncQueueItem.arg1 = i4;
                syncQueueItem.arg2 = i5;
                syncQueueItem.arg3 = i6;
                syncQueueItem.arg4 = i7;
                syncQueueItem.arg5 = i8;
                syncQueueItem.data = obj;
            }
            return syncQueueItem;
        }

        static SyncQueueItem c(int i2, int i4, Object obj) {
            return b(i2, i4, 0, 0, 0, 0, obj);
        }

        void d() {
            this.f7058a = null;
            this.arg5 = 0;
            this.arg4 = 0;
            this.arg3 = 0;
            this.arg2 = 0;
            this.arg1 = 0;
            this.what = 0;
            this.data = null;
            synchronized (f7057c) {
                SyncQueueItem syncQueueItem = f7056b;
                if (syncQueueItem != null) {
                    this.f7058a = syncQueueItem;
                }
                f7056b = this;
            }
        }
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.BackgroundCallback<T> getBackgroundProxy(ThreadUtil.BackgroundCallback<T> backgroundCallback) {
        return new AnonymousClass2(backgroundCallback);
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.MainThreadCallback<T> getMainThreadProxy(ThreadUtil.MainThreadCallback<T> mainThreadCallback) {
        return new AnonymousClass1(mainThreadCallback);
    }
}
