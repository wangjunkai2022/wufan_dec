.class public final Lio/reactivex/internal/operators/single/SingleTakeUntil;
.super Lio/reactivex/i0;
.source "SingleTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;,
        Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Ll3/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->b:Ll3/b;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;-><init>(Lio/reactivex/l0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->b:Ll3/b;

    iget-object v1, v0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->b:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->a:Lio/reactivex/o0;

    invoke-interface {p1, v0}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
