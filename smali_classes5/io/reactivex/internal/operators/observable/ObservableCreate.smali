.class public final Lio/reactivex/internal/operators/observable/ObservableCreate;
.super Lio/reactivex/z;
.source "ObservableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;,
        Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/c0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/c0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->a:Lio/reactivex/c0;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Lio/reactivex/g0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->a:Lio/reactivex/c0;

    invoke-interface {p1, v0}, Lio/reactivex/c0;->a(Lio/reactivex/b0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
