package com.facebook.datasource;
/* compiled from: BaseBooleanSubscriber.java */
/* loaded from: classes2.dex */
public abstract class a implements e<Boolean> {
    @Override // com.facebook.datasource.e
    public void a(c<Boolean> cVar) {
    }

    @Override // com.facebook.datasource.e
    public void b(c<Boolean> cVar) {
        try {
            e(cVar);
        } finally {
            cVar.close();
        }
    }

    @Override // com.facebook.datasource.e
    public void c(c<Boolean> cVar) {
        try {
            f(cVar.g().booleanValue());
        } finally {
            cVar.close();
        }
    }

    @Override // com.facebook.datasource.e
    public void d(c<Boolean> cVar) {
    }

    protected abstract void e(c<Boolean> cVar);

    protected abstract void f(boolean z3);
}
