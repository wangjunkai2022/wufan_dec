.class public final Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;
.super Lio/reactivex/q;
.source "SingleFlatMapMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$a;,
        Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
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
            "+TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->b:Lw2/o;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->a:Lio/reactivex/o0;

    return-void
.end method


# virtual methods
.method protected o1(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->b:Lw2/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;-><init>(Lio/reactivex/t;Lw2/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
