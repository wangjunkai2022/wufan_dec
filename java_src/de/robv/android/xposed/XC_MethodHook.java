package de.robv.android.xposed;

import de.robv.android.xposed.callbacks.IXUnhook;
import de.robv.android.xposed.callbacks.XCallback;
import java.lang.reflect.Member;
/* loaded from: classes.dex */
public abstract class XC_MethodHook extends XCallback {

    /* loaded from: classes3.dex */
    public static final class MethodHookParam extends XCallback.Param {
        public Object[] args;
        public Member method;
        public Object thisObject;
        private Object result = null;
        private Throwable throwable = null;
        public boolean returnEarly = false;

        public Object getResult() {
            return this.result;
        }

        public Object getResultOrThrowable() throws Throwable {
            Throwable th = this.throwable;
            if (th == null) {
                return this.result;
            }
            throw th;
        }

        public Throwable getThrowable() {
            return this.throwable;
        }

        public boolean hasThrowable() {
            return this.throwable != null;
        }

        public void setResult(Object result) {
            this.result = result;
            this.throwable = null;
            this.returnEarly = true;
        }

        public void setThrowable(Throwable throwable) {
            this.throwable = throwable;
            this.result = null;
            this.returnEarly = true;
        }
    }

    /* loaded from: classes.dex */
    public class Unhook implements IXUnhook<XC_MethodHook> {
        private final Member hookMethod;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Unhook(Member hookMethod) {
            this.hookMethod = hookMethod;
        }

        public Member getHookedMethod() {
            return this.hookMethod;
        }

        @Override // de.robv.android.xposed.callbacks.IXUnhook
        public void unhook() {
            XposedBridge.unhookMethod(this.hookMethod, XC_MethodHook.this);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // de.robv.android.xposed.callbacks.IXUnhook
        public XC_MethodHook getCallback() {
            return XC_MethodHook.this;
        }
    }

    public XC_MethodHook() {
    }

    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
    }

    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
    }

    public void callAfterHookedMethod(MethodHookParam param) throws Throwable {
        afterHookedMethod(param);
    }

    public void callBeforeHookedMethod(MethodHookParam param) throws Throwable {
        beforeHookedMethod(param);
    }

    public XC_MethodHook(int priority) {
        super(priority);
    }
}
