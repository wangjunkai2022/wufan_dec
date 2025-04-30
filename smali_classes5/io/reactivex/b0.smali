.class public interface abstract Lio/reactivex/b0;
.super Ljava/lang/Object;
.source "ObservableEmitter.java"

# interfaces
.implements Lio/reactivex/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/i<",
        "TT;>;"
    }
.end annotation


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

.method public abstract serialize()Lio/reactivex/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end method
