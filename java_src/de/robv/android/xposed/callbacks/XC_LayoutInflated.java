package de.robv.android.xposed.callbacks;

import android.view.View;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XCallback;
/* loaded from: classes3.dex */
public abstract class XC_LayoutInflated extends XCallback {

    /* loaded from: classes3.dex */
    public static final class LayoutInflatedParam extends XCallback.Param {
        public View view;

        public LayoutInflatedParam(XposedBridge.CopyOnWriteSortedSet<XC_LayoutInflated> callbacks) {
            super(callbacks);
        }
    }

    /* loaded from: classes3.dex */
    public class Unhook implements IXUnhook<XC_LayoutInflated> {
        private final int id;
        private final String resDir;

        public Unhook(String resDir, int id) {
            this.resDir = resDir;
            this.id = id;
        }

        public int getId() {
            return this.id;
        }

        @Override // de.robv.android.xposed.callbacks.IXUnhook
        public void unhook() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // de.robv.android.xposed.callbacks.IXUnhook
        public XC_LayoutInflated getCallback() {
            return XC_LayoutInflated.this;
        }
    }

    public XC_LayoutInflated() {
    }

    @Override // de.robv.android.xposed.callbacks.XCallback
    protected void call(XCallback.Param param) throws Throwable {
        if (param instanceof LayoutInflatedParam) {
            handleLayoutInflated((LayoutInflatedParam) param);
        }
    }

    public abstract void handleLayoutInflated(LayoutInflatedParam liparam) throws Throwable;

    public XC_LayoutInflated(int priority) {
        super(priority);
    }
}
