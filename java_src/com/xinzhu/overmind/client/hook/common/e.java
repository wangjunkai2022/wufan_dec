package com.xinzhu.overmind.client.hook.common;

import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.f;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: ReplaceUIDMethodHookStub.java */
/* loaded from: classes.dex */
public class e extends g {

    /* renamed from: d  reason: collision with root package name */
    public static int f64090d = -1;

    /* renamed from: e  reason: collision with root package name */
    public static int f64091e = -3;

    /* renamed from: a  reason: collision with root package name */
    String f64092a = getClass().getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    String f64093b;

    /* renamed from: c  reason: collision with root package name */
    int f64094c;

    public e(String name, int replace_UID_index) {
        this.f64093b = name;
        this.f64094c = replace_UID_index;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public String c() {
        return this.f64093b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public Object d(Object who, Method method, Object[] args) throws Throwable {
        int intValue;
        if (args == null) {
            return method.invoke(who, args);
        }
        int length = args.length;
        int i2 = this.f64094c;
        if (i2 < length) {
            if (i2 != f64090d) {
                if (i2 < 0) {
                    if (i2 != f64091e) {
                        throw new RuntimeException(this.f64093b + " mReplaceUIDIndex unexpected " + this.f64094c);
                    }
                    i2 = length - 1;
                }
                if (i2 >= 0 && (args[i2] instanceof Integer) && ((intValue = ((Integer) args[i2]).intValue()) == com.xinzhu.overmind.client.e.getBaseVUid() || intValue == com.xinzhu.overmind.client.e.getVUid() || f.d().m(intValue) != null)) {
                    args[i2] = Integer.valueOf(Overmind.getHostUid());
                }
            }
            return method.invoke(who, args);
        }
        throw new RuntimeException(this.f64093b + " mReplaceUIDIndex out of range");
    }
}
