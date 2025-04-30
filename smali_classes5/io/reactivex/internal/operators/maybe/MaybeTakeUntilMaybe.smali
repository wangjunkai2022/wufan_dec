.class public final Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeTakeUntilMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver;
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
.field final b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/w<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe;->b:Lio/reactivex/w;

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
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver;-><init>(Lio/reactivex/t;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe;->b:Lio/reactivex/w;

    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver;

    invoke-interface {p1, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    invoke-interface {p1, v0}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method
