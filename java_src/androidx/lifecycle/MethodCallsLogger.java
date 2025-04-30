package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MethodCallsLogger {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Integer> f6269a = new HashMap();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean approveCall(String str, int i2) {
        Integer num = this.f6269a.get(str);
        int intValue = num != null ? num.intValue() : 0;
        boolean z3 = (intValue & i2) != 0;
        this.f6269a.put(str, Integer.valueOf(i2 | intValue));
        return !z3;
    }
}
