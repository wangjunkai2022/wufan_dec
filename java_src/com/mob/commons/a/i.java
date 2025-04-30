package com.mob.commons.a;

import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.SharePrefrenceHelper;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class i extends c {

    /* renamed from: c  reason: collision with root package name */
    private static com.mob.commons.h f52797c;

    /* renamed from: d  reason: collision with root package name */
    private static final String f52798d = com.mob.commons.n.a("014UciHh5chcccecfQcScd5ih(ccdcdbee");

    /* renamed from: e  reason: collision with root package name */
    private SharePrefrenceHelper f52799e;

    public i() {
        super(com.mob.commons.n.a("002Rebcd"), 0L, com.mob.commons.n.a("005*ebcdeeceYd"), 30L);
        c();
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
        this.f52799e = sharePrefrenceHelper;
        sharePrefrenceHelper.open(com.mob.commons.n.a("008c]dbZdYccVcHcdUkh"));
    }

    private void b(long j4) {
        if (com.mob.commons.i.a().b()) {
            return;
        }
        o.a().a(k(), i.class, new Object[]{-1, new Long[]{3L, Long.valueOf(j4)}}, 0);
    }

    private void n() {
        try {
            HashMap hashMap = (HashMap) this.f52799e.get(f52798d);
            if (hashMap == null || hashMap.isEmpty()) {
                return;
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                long longValue = ((Long) entry.getKey()).longValue();
                long longValue2 = ((Long) entry.getValue()).longValue();
                HashMap<String, Object> hashMap2 = new HashMap<>();
                hashMap2.put(com.mob.commons.n.a("005Ycbcj7c9cddc"), Long.valueOf(longValue2));
                hashMap2.put(com.mob.commons.n.a("0080cgcbcj^c5cd[khBef"), Long.valueOf(longValue2 - longValue));
                a("BKIOMT", hashMap2);
            }
            this.f52799e.remove(f52798d);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    private static synchronized boolean o() {
        synchronized (i.class) {
            if (f52797c == null) {
                f52797c = new com.mob.commons.h() { // from class: com.mob.commons.a.i.1

                    /* renamed from: a  reason: collision with root package name */
                    private volatile long f52800a = 0;

                    @Override // com.mob.commons.h
                    public void a(boolean z3, boolean z4, long j4) {
                        if (z4) {
                            this.f52800a = System.currentTimeMillis();
                            o.a().a(0L, i.class, new Object[]{-1, new Long[]{0L, Long.valueOf(this.f52800a), Long.valueOf(System.currentTimeMillis())}}, 1);
                        }
                        if (!z3) {
                            if (j4 > 0) {
                                o.a().a(0L, i.class, new Object[]{-1, new Long[]{2L, Long.valueOf(this.f52800a), Long.valueOf(System.currentTimeMillis())}}, 1);
                            }
                        } else if (z4) {
                        } else {
                            this.f52800a = System.currentTimeMillis();
                            o.a().a(0L, i.class, new Object[]{-1, new Long[]{1L, Long.valueOf(this.f52800a), Long.valueOf(System.currentTimeMillis())}}, 0);
                        }
                    }
                };
                com.mob.commons.i.a().a(f52797c);
                return true;
            }
            return false;
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        long longValue;
        if (f()) {
            o();
            return;
        }
        Long[] lArr = (Long[]) this.f52783a;
        long longValue2 = lArr[0].longValue();
        long longValue3 = lArr[1].longValue();
        if (longValue2 == 3 && lArr.length < 3) {
            longValue = System.currentTimeMillis();
        } else {
            longValue = lArr[2].longValue();
        }
        if (longValue2 == 0) {
            n();
            a(longValue3, longValue);
            b(longValue3);
        } else if (longValue2 == 1 || longValue2 == 3) {
            a(longValue3, longValue);
            b(longValue3);
        } else if (longValue2 == 2) {
            a(longValue3, longValue);
            n();
        }
    }

    @Override // com.mob.commons.a.c
    protected void b() {
    }

    private void a(long j4, long j5) {
        try {
            SharePrefrenceHelper sharePrefrenceHelper = this.f52799e;
            String str = f52798d;
            HashMap hashMap = (HashMap) sharePrefrenceHelper.get(str);
            if (hashMap == null) {
                hashMap = new HashMap();
            }
            hashMap.put(Long.valueOf(j4), Long.valueOf(j5));
            this.f52799e.put(str, hashMap);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }
}
