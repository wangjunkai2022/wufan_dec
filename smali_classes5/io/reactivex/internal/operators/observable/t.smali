.class public final Lio/reactivex/internal/operators/observable/t;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/t;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/t;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/t;->d:Lio/reactivex/h0;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/t;->e:Z

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t;->e:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/observers/l;

    invoke-direct {v0, p1}, Lio/reactivex/observers/l;-><init>(Lio/reactivex/g0;)V

    move-object v2, v0

    .line 3
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/t;->d:Lio/reactivex/h0;

    invoke-virtual {p1}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v6

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v0, Lio/reactivex/internal/operators/observable/t$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/t;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/t;->c:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/t;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/t$a;-><init>(Lio/reactivex/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Z)V

    invoke-interface {p1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
