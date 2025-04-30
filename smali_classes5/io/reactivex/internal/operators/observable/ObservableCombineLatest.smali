.class public final Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.super Lio/reactivex/z;
.source "ObservableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/e0<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>([Lio/reactivex/e0;Ljava/lang/Iterable;Lw2/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/e0<",
            "+TT;>;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->a:[Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->b:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->c:Lw2/o;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->d:I

    .line 6
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->e:Z

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->a:[Lio/reactivex/e0;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/z;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/e0;

    .line 3
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 4
    new-array v5, v5, [Lio/reactivex/e0;

    .line 5
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 6
    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 7
    :cond_1
    array-length v3, v0

    :cond_2
    move v4, v3

    if-nez v4, :cond_3

    .line 8
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/g0;)V

    return-void

    .line 9
    :cond_3
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->c:Lw2/o;

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->d:I

    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->e:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;-><init>(Lio/reactivex/g0;Lw2/o;IIZ)V

    .line 10
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g([Lio/reactivex/e0;)V

    return-void
.end method
