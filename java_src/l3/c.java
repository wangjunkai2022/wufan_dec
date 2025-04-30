package l3;
/* compiled from: Subscriber.java */
/* loaded from: classes5.dex */
public interface c<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t3);

    void onSubscribe(d dVar);
}
