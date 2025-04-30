.class public final Lio/reactivex/internal/operators/flowable/q;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/h0;

.field final f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/q;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/q;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/q;->e:Lio/reactivex/h0;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/q;->f:Z

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q;->f:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/subscribers/e;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/e;-><init>(Ll3/c;)V

    move-object v2, v0

    .line 3
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q;->e:Lio/reactivex/h0;

    invoke-virtual {p1}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v6

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v0, Lio/reactivex/internal/operators/flowable/q$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/q;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/q;->d:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/q;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/q$a;-><init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
