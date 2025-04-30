package de.robv.android.xposed.callbacks;

import android.os.Bundle;
import de.robv.android.xposed.XposedBridge;
import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class XCallback implements Comparable<XCallback> {
    public static final int PRIORITY_DEFAULT = 50;
    public static final int PRIORITY_HIGHEST = 10000;
    public static final int PRIORITY_LOWEST = -10000;
    public final int priority;

    @Deprecated
    public XCallback() {
        this.priority = 50;
    }

    public static void callAll(Param param) {
        if (param.callbacks == null) {
            throw new IllegalStateException("This object was not created for use with callAll");
        }
        int i2 = 0;
        while (true) {
            Object[] objArr = param.callbacks;
            if (i2 >= objArr.length) {
                return;
            }
            try {
                ((XCallback) objArr[i2]).call(param);
            } catch (Throwable th) {
                XposedBridge.log(th);
            }
            i2++;
        }
    }

    protected void call(Param param) throws Throwable {
    }

    /* loaded from: classes.dex */
    public static abstract class Param {
        public final Object[] callbacks;
        private Bundle extra;

        /* loaded from: classes3.dex */
        private static class SerializeWrapper implements Serializable {
            private static final long serialVersionUID = 1;
            private final Object object;

            public SerializeWrapper(Object o3) {
                this.object = o3;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Param() {
            this.callbacks = null;
        }

        public synchronized Bundle getExtra() {
            if (this.extra == null) {
                this.extra = new Bundle();
            }
            return this.extra;
        }

        public Object getObjectExtra(String key) {
            Serializable serializable = getExtra().getSerializable(key);
            if (serializable instanceof SerializeWrapper) {
                return ((SerializeWrapper) serializable).object;
            }
            return null;
        }

        public void setObjectExtra(String key, Object o3) {
            getExtra().putSerializable(key, new SerializeWrapper(o3));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Param(XposedBridge.CopyOnWriteSortedSet<? extends XCallback> callbacks) {
            this.callbacks = callbacks.getSnapshot();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(XCallback other) {
        if (this == other) {
            return 0;
        }
        int i2 = other.priority;
        int i4 = this.priority;
        return i2 != i4 ? i2 - i4 : System.identityHashCode(this) < System.identityHashCode(other) ? -1 : 1;
    }

    public XCallback(int priority) {
        this.priority = priority;
    }
}
