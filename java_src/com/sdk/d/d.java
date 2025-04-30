package com.sdk.d;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* JADX INFO: Add missing generic type declarations: [Result] */
/* loaded from: classes4.dex */
public class d<Result> extends FutureTask<Result> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f56602a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, Callable callable) {
        super(callable);
        this.f56602a = eVar;
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        try {
            e.b(this.f56602a, super.get());
        } catch (Exception e4) {
            e.b(this.f56602a, null);
            com.sdk.o.b.a("PriorityAsyncTask", e4.getMessage(), this.f56602a.f56610h);
        }
    }
}
