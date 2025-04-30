package com.qq.e.comm.managers;

import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.plugin.e;
import com.qq.e.comm.util.GDTLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f56429a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        this.f56429a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        PM pm;
        try {
            pm = this.f56429a.f56434d;
            pm.getPOFactory();
            this.f56429a.f56432b = true;
        } catch (e e4) {
            GDTLogger.e(e4.getMessage(), e4);
        }
    }
}
