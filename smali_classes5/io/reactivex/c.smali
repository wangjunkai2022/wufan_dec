.class public interface abstract Lio/reactivex/c;
.super Ljava/lang/Object;
.source "CompletableEmitter.java"


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)Z
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Lw2/f;)V
    .param p1    # Lw2/f;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c(Lio/reactivex/disposables/b;)V
    .param p1    # Lio/reactivex/disposables/b;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method
