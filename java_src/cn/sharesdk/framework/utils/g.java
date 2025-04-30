package cn.sharesdk.framework.utils;

import android.os.Handler;
import android.os.Message;
import com.mob.tools.MobHandlerThread;
/* compiled from: SSDKHandlerThread.java */
/* loaded from: classes2.dex */
public abstract class g implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    protected final Handler f8927a = MobHandlerThread.newHandler(this);

    public void a(int i2, int i4, Object obj) {
        Message message = new Message();
        message.what = -1;
        message.arg1 = i2;
        message.arg2 = i4;
        message.obj = obj;
        this.f8927a.sendMessage(message);
    }

    protected void a(Message message) {
    }

    protected abstract void b(Message message);

    protected void c(Message message) {
    }

    public void d() {
        a(0, 0, null);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == -2) {
            c(message);
            return false;
        } else if (i2 != -1) {
            b(message);
            return false;
        } else {
            a(message);
            return false;
        }
    }
}
