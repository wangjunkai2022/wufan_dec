.class public final Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeTimeoutPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutFallbackMaybeObserver;,
        Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutOtherMaybeObserver;,
        Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutMainMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ll3/b;Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Ll3/b<",
            "TU;>;",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;->b:Ll3/b;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;->c:Lio/reactivex/w;

    return-void
.end method


# virtual methods
.method protected o1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutMainMaybeObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;->c:Lio/reactivex/w;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutMainMaybeObserver;-><init>(Lio/reactivex/t;Lio/reactivex/w;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;->b:Ll3/b;

    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutMainMaybeObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutOtherMaybeObserver;

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    invoke-interface {p1, v0}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method
