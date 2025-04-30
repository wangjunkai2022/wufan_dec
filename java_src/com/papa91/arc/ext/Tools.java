package com.papa91.arc.ext;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes4.dex */
public class Tools {

    /* loaded from: classes4.dex */
    public static class HandlerWrapper extends Handler {
        final Handler base;

        public HandlerWrapper(Handler handler) {
            super(handler.getLooper());
            this.base = handler;
        }

        public static Handler wrap(Handler handler) {
            return !(handler instanceof HandlerWrapper) ? new HandlerWrapper(handler) : handler;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                this.base.handleMessage(message);
            } catch (Throwable th) {
                Log.badImplementation(th);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class RunnableWrapper implements Runnable {
        final Runnable base;

        public RunnableWrapper(Runnable runnable) {
            this.base = runnable;
        }

        public static Runnable wrap(Runnable runnable) {
            return !(runnable instanceof RunnableWrapper) ? new RunnableWrapper(runnable) : runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.base.run();
            } catch (Throwable th) {
                Log.badImplementation(th);
            }
        }
    }
}
