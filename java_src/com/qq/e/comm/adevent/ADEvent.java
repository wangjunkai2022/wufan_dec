package com.qq.e.comm.adevent;

import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes4.dex */
public class ADEvent {

    /* renamed from: a  reason: collision with root package name */
    private final int f56412a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f56413b;

    public ADEvent(int i2, Object... objArr) {
        this.f56412a = i2;
        this.f56413b = objArr;
        if (i2 < 100) {
            a("EventId 错误" + i2);
        }
    }

    private void a(String str) {
        GDTLogger.e(str);
    }

    public <T> T getParam(int i2, Class<T> cls) {
        Object[] objArr;
        if (cls == null || (objArr = this.f56413b) == null || objArr.length <= i2) {
            return null;
        }
        T t3 = (T) objArr[i2];
        if (t3 == null) {
            GDTLogger.e("ADEvent 参数为空,type:" + this.f56412a);
            return null;
        } else if (cls.isInstance(objArr[i2])) {
            return t3;
        } else {
            GDTLogger.e("ADEvent" + this.f56412a + " 参数类型错误,期望类型" + cls.getName() + "实际类型 " + t3.getClass().getName());
            return null;
        }
    }

    public <T> T getParam(Class<T> cls) {
        return (T) getParam(0, cls);
    }

    public int getType() {
        return this.f56412a;
    }
}
