package m.framework.utils;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes5.dex */
public class UIHandler {
    private static Handler handler;

    private static Message getShellMessage(Message message, Handler.Callback callback) {
        Message message2 = new Message();
        message2.obj = new Object[]{message, callback};
        return message2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleMessage(Message message) {
        Object[] objArr = (Object[]) message.obj;
        Message message2 = (Message) objArr[0];
        Handler.Callback callback = (Handler.Callback) objArr[1];
        if (callback != null) {
            callback.handleMessage(message2);
        }
    }

    public static void prepare() {
        if (handler == null) {
            handler = new Handler(new Handler.Callback() { // from class: m.framework.utils.UIHandler.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    UIHandler.handleMessage(message);
                    return false;
                }
            });
        }
    }

    public static boolean sendEmptyMessage(int i2, Handler.Callback callback) {
        return handler.sendMessage(getShellMessage(i2, callback));
    }

    public static boolean sendEmptyMessageAtTime(int i2, long j4, Handler.Callback callback) {
        return handler.sendMessageAtTime(getShellMessage(i2, callback), j4);
    }

    public static boolean sendEmptyMessageDelayed(int i2, long j4, Handler.Callback callback) {
        return handler.sendMessageDelayed(getShellMessage(i2, callback), j4);
    }

    public static boolean sendMessage(Message message, Handler.Callback callback) {
        return handler.sendMessage(getShellMessage(message, callback));
    }

    public static boolean sendMessageAtFrontOfQueue(Message message, Handler.Callback callback) {
        return handler.sendMessageAtFrontOfQueue(getShellMessage(message, callback));
    }

    public static boolean sendMessageAtTime(Message message, long j4, Handler.Callback callback) {
        return handler.sendMessageAtTime(getShellMessage(message, callback), j4);
    }

    public static boolean sendMessageDelayed(Message message, long j4, Handler.Callback callback) {
        return handler.sendMessageDelayed(getShellMessage(message, callback), j4);
    }

    private static Message getShellMessage(int i2, Handler.Callback callback) {
        Message message = new Message();
        message.what = i2;
        return getShellMessage(message, callback);
    }
}
