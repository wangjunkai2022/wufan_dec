package androidx.databinding;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {

    /* renamed from: f  reason: collision with root package name */
    private static final String f5218f = "CallbackRegistry";

    /* renamed from: a  reason: collision with root package name */
    private List<C> f5219a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private long f5220b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long[] f5221c;

    /* renamed from: d  reason: collision with root package name */
    private int f5222d;

    /* renamed from: e  reason: collision with root package name */
    private final NotifierCallback<C, T, A> f5223e;

    /* loaded from: classes.dex */
    public static abstract class NotifierCallback<C, T, A> {
        public abstract void onNotifyCallback(C c4, T t3, int i2, A a4);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifierCallback) {
        this.f5223e = notifierCallback;
    }

    private boolean a(int i2) {
        int i4;
        if (i2 < 64) {
            return ((1 << i2) & this.f5220b) != 0;
        }
        long[] jArr = this.f5221c;
        if (jArr != null && (i4 = (i2 / 64) - 1) < jArr.length) {
            return ((1 << (i2 % 64)) & jArr[i4]) != 0;
        }
        return false;
    }

    private void b(T t3, int i2, A a4, int i4, int i5, long j4) {
        long j5 = 1;
        while (i4 < i5) {
            if ((j4 & j5) == 0) {
                this.f5223e.onNotifyCallback(this.f5219a.get(i4), t3, i2, a4);
            }
            j5 <<= 1;
            i4++;
        }
    }

    private void c(T t3, int i2, A a4) {
        b(t3, i2, a4, 0, Math.min(64, this.f5219a.size()), this.f5220b);
    }

    private void d(T t3, int i2, A a4) {
        int size = this.f5219a.size();
        long[] jArr = this.f5221c;
        int length = jArr == null ? -1 : jArr.length - 1;
        e(t3, i2, a4, length);
        b(t3, i2, a4, (length + 2) * 64, size, 0L);
    }

    private void e(T t3, int i2, A a4, int i4) {
        if (i4 < 0) {
            c(t3, i2, a4);
            return;
        }
        long j4 = this.f5221c[i4];
        int i5 = (i4 + 1) * 64;
        int min = Math.min(this.f5219a.size(), i5 + 64);
        e(t3, i2, a4, i4 - 1);
        b(t3, i2, a4, i5, min, j4);
    }

    private void f(int i2, long j4) {
        long j5 = Long.MIN_VALUE;
        for (int i4 = (i2 + 64) - 1; i4 >= i2; i4--) {
            if ((j4 & j5) != 0) {
                this.f5219a.remove(i4);
            }
            j5 >>>= 1;
        }
    }

    private void g(int i2) {
        if (i2 < 64) {
            this.f5220b = (1 << i2) | this.f5220b;
            return;
        }
        int i4 = (i2 / 64) - 1;
        long[] jArr = this.f5221c;
        if (jArr == null) {
            this.f5221c = new long[this.f5219a.size() / 64];
        } else if (jArr.length <= i4) {
            long[] jArr2 = new long[this.f5219a.size() / 64];
            long[] jArr3 = this.f5221c;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f5221c = jArr2;
        }
        long j4 = 1 << (i2 % 64);
        long[] jArr4 = this.f5221c;
        jArr4[i4] = j4 | jArr4[i4];
    }

    public synchronized void add(C c4) {
        if (c4 != null) {
            int lastIndexOf = this.f5219a.lastIndexOf(c4);
            if (lastIndexOf < 0 || a(lastIndexOf)) {
                this.f5219a.add(c4);
            }
        } else {
            throw new IllegalArgumentException("callback cannot be null");
        }
    }

    public synchronized void clear() {
        if (this.f5222d == 0) {
            this.f5219a.clear();
        } else if (!this.f5219a.isEmpty()) {
            for (int size = this.f5219a.size() - 1; size >= 0; size--) {
                g(size);
            }
        }
    }

    public synchronized ArrayList<C> copyCallbacks() {
        ArrayList<C> arrayList;
        arrayList = new ArrayList<>(this.f5219a.size());
        int size = this.f5219a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!a(i2)) {
                arrayList.add(this.f5219a.get(i2));
            }
        }
        return arrayList;
    }

    public synchronized boolean isEmpty() {
        if (this.f5219a.isEmpty()) {
            return true;
        }
        if (this.f5222d == 0) {
            return false;
        }
        int size = this.f5219a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!a(i2)) {
                return false;
            }
        }
        return true;
    }

    public synchronized void notifyCallbacks(T t3, int i2, A a4) {
        this.f5222d++;
        d(t3, i2, a4);
        int i4 = this.f5222d - 1;
        this.f5222d = i4;
        if (i4 == 0) {
            long[] jArr = this.f5221c;
            if (jArr != null) {
                for (int length = jArr.length - 1; length >= 0; length--) {
                    long j4 = this.f5221c[length];
                    if (j4 != 0) {
                        f((length + 1) * 64, j4);
                        this.f5221c[length] = 0;
                    }
                }
            }
            long j5 = this.f5220b;
            if (j5 != 0) {
                f(0, j5);
                this.f5220b = 0L;
            }
        }
    }

    public synchronized void remove(C c4) {
        if (this.f5222d == 0) {
            this.f5219a.remove(c4);
        } else {
            int lastIndexOf = this.f5219a.lastIndexOf(c4);
            if (lastIndexOf >= 0) {
                g(lastIndexOf);
            }
        }
    }

    /* renamed from: clone */
    public synchronized CallbackRegistry<C, T, A> m7clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e4;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.f5220b = 0L;
                callbackRegistry.f5221c = null;
                callbackRegistry.f5222d = 0;
                callbackRegistry.f5219a = new ArrayList();
                int size = this.f5219a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (!a(i2)) {
                        callbackRegistry.f5219a.add(this.f5219a.get(i2));
                    }
                }
            } catch (CloneNotSupportedException e5) {
                e4 = e5;
                e4.printStackTrace();
                return callbackRegistry;
            }
        } catch (CloneNotSupportedException e6) {
            callbackRegistry = null;
            e4 = e6;
        }
        return callbackRegistry;
    }

    public synchronized void copyCallbacks(List<C> list) {
        list.clear();
        int size = this.f5219a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!a(i2)) {
                list.add(this.f5219a.get(i2));
            }
        }
    }
}
