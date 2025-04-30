.class public final Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;
.super Lio/reactivex/z;
.source "SingleFlatMapIterableObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;
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
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;->b:Lw2/o;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable;->b:Lw2/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver;-><init>(Lio/reactivex/g0;Lw2/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
