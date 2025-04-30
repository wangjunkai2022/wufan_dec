package com.mob.tools;

import com.facebook.imagepipeline.producers.s;
import com.mob.commons.u;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.c;
import com.ss.android.download.api.constant.BaseConstants;
import java.util.ArrayList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class MDP implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static Object f53337a = new Object();

    public static Object get(String str, ArrayList<Object> arrayList) {
        return get(str, arrayList, false, 0);
    }

    private static Object a(String str, BlockingQueue blockingQueue) throws InterruptedException {
        int i2;
        if ("gia".equals(str) || "gal".equals(str) || "gsl".equals(str)) {
            i2 = s.f13217g;
        } else if ("glctn".equals(str)) {
            i2 = BaseConstants.Time.MINUTE;
        } else {
            i2 = "rgwsr".equals(str) ? 10000 : 3000;
        }
        return blockingQueue.poll(i2, TimeUnit.MILLISECONDS);
    }

    public static Object get(String str, ArrayList<Object> arrayList, int i2) {
        return get(str, arrayList, false, i2);
    }

    public static Object get(String str, ArrayList<Object> arrayList, boolean z3) {
        return get(str, arrayList, z3, 0);
    }

    public static Object get(final String str, final ArrayList<Object> arrayList, boolean z3, int i2) {
        Object poll;
        if (z3) {
            return com.mob.tools.b.a.a(str, arrayList);
        }
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        u.f53116e.execute(new c() { // from class: com.mob.tools.MDP.1
            @Override // com.mob.tools.utils.c
            public void a() {
                Object a4 = com.mob.tools.b.a.a(str, arrayList);
                if (a4 == null) {
                    a4 = MDP.f53337a;
                }
                linkedBlockingQueue.offer(a4);
            }
        });
        try {
            if (i2 <= 0) {
                poll = a(str, linkedBlockingQueue);
            } else {
                poll = linkedBlockingQueue.poll(i2, TimeUnit.MILLISECONDS);
            }
            if (poll == f53337a) {
                return null;
            }
            return poll;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }
}
