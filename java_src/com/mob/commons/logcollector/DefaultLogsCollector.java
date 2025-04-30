package com.mob.commons.logcollector;

import com.mob.tools.log.LogCollector;
import com.mob.tools.log.NLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;
@Deprecated
/* loaded from: classes4.dex */
public class DefaultLogsCollector implements LogCollector, PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static DefaultLogsCollector f53055a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Integer> f53056b = new HashMap<>();

    private DefaultLogsCollector() {
    }

    public static synchronized DefaultLogsCollector get() {
        DefaultLogsCollector defaultLogsCollector;
        synchronized (DefaultLogsCollector.class) {
            if (f53055a == null) {
                f53055a = new DefaultLogsCollector();
            }
            defaultLogsCollector = f53055a;
        }
        return defaultLogsCollector;
    }

    public void addSDK(String str, int i2) {
        synchronized (this.f53056b) {
            this.f53056b.put(str, Integer.valueOf(i2));
        }
    }

    @Override // com.mob.tools.log.LogCollector
    public final void log(String str, int i2, int i4, String str2, String str3) {
        Integer num = this.f53056b.get(str);
        if (num == null) {
            num = -1;
        }
        NLog.getInstance(str, num.intValue(), str).log(i2, str3, new Object[0]);
    }
}
