package cn.sharesdk.framework;

import android.os.Handler;
import android.os.Message;
import com.mob.tools.utils.UIHandler;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class ReflectablePlatformActionListener implements PlatformActionListener {

    /* renamed from: a  reason: collision with root package name */
    private int f8707a;

    /* renamed from: b  reason: collision with root package name */
    private Handler.Callback f8708b;

    /* renamed from: c  reason: collision with root package name */
    private int f8709c;

    /* renamed from: d  reason: collision with root package name */
    private Handler.Callback f8710d;

    /* renamed from: e  reason: collision with root package name */
    private int f8711e;

    /* renamed from: f  reason: collision with root package name */
    private Handler.Callback f8712f;

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i2) {
        if (this.f8712f != null) {
            Message message = new Message();
            message.what = this.f8711e;
            message.obj = new Object[]{platform, Integer.valueOf(i2)};
            UIHandler.sendMessage(message, this.f8712f);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
        if (this.f8708b != null) {
            Message message = new Message();
            message.what = this.f8707a;
            message.obj = new Object[]{platform, Integer.valueOf(i2), hashMap};
            UIHandler.sendMessage(message, this.f8708b);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i2, Throwable th) {
        if (this.f8710d != null) {
            Message message = new Message();
            message.what = this.f8709c;
            message.obj = new Object[]{platform, Integer.valueOf(i2), th};
            UIHandler.sendMessage(message, this.f8710d);
        }
    }

    public void setOnCancelCallback(int i2, Handler.Callback callback) {
        this.f8711e = i2;
        this.f8712f = callback;
    }

    public void setOnCompleteCallback(int i2, Handler.Callback callback) {
        this.f8707a = i2;
        this.f8708b = callback;
    }

    public void setOnErrorCallback(int i2, Handler.Callback callback) {
        this.f8709c = i2;
        this.f8710d = callback;
    }
}
