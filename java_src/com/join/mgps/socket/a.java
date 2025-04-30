package com.join.mgps.socket;

import com.join.mgps.socket.entity.e;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: RequestQueneManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f52013b = "a";

    /* renamed from: a  reason: collision with root package name */
    LinkedBlockingQueue<e> f52014a;

    /* compiled from: RequestQueneManager.java */
    /* loaded from: classes4.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f52015a = new a();

        private b() {
        }
    }

    public static a b() {
        return b.f52015a;
    }

    public void a() {
        LinkedBlockingQueue<e> linkedBlockingQueue = this.f52014a;
        if (linkedBlockingQueue != null) {
            linkedBlockingQueue.clear();
        }
    }

    public e c() {
        LinkedBlockingQueue<e> linkedBlockingQueue = this.f52014a;
        if (linkedBlockingQueue != null) {
            return linkedBlockingQueue.poll();
        }
        return null;
    }

    public void d(e eVar) {
        try {
            if (this.f52014a == null) {
                this.f52014a = new LinkedBlockingQueue<>();
            }
            this.f52014a.put(eVar);
            StringBuilder sb = new StringBuilder();
            sb.append("push: 装入数据 size");
            sb.append(this.f52014a.size());
            sb.append(eVar.toString());
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
    }

    private a() {
        this.f52014a = new LinkedBlockingQueue<>();
    }
}
