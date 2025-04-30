.class public final Lio/reactivex/internal/operators/completable/CompletableDelay;
.super Lio/reactivex/a;
.source "CompletableDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->a:Lio/reactivex/g;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->d:Lio/reactivex/h0;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->e:Z

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->a:Lio/reactivex/g;

    new-instance v8, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;

    iget-wide v3, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->d:Lio/reactivex/h0;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/completable/CompletableDelay;->e:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;-><init>(Lio/reactivex/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
