.class public final Lio/reactivex/internal/operators/maybe/MaybeDelay;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/w;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay;->d:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected o1(Lio/reactivex/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v7, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;

    iget-wide v3, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay;->d:Lio/reactivex/h0;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;-><init>(Lio/reactivex/t;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-interface {v0, v7}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method
