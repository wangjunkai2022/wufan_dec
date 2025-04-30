package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
/* loaded from: classes5.dex */
public final class FlowableMaterialize<T> extends a<T, io.reactivex.y<T>> {

    /* loaded from: classes5.dex */
    static final class MaterializeSubscriber<T> extends SinglePostCompleteSubscriber<T, io.reactivex.y<T>> {
        private static final long serialVersionUID = -3740826063558713822L;

        MaterializeSubscriber(l3.c<? super io.reactivex.y<T>> cVar) {
            super(cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber
        /* renamed from: c */
        public void b(io.reactivex.y<T> yVar) {
            if (yVar.g()) {
                io.reactivex.plugins.a.Y(yVar.d());
            }
        }

        @Override // l3.c
        public void onComplete() {
            a(io.reactivex.y.a());
        }

        @Override // l3.c
        public void onError(Throwable th) {
            a(io.reactivex.y.b(th));
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f69995d++;
            this.f69992a.onNext(io.reactivex.y.c(t3));
        }
    }

    public FlowableMaterialize(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.y<T>> cVar) {
        this.f67288b.g6(new MaterializeSubscriber(cVar));
    }
}
