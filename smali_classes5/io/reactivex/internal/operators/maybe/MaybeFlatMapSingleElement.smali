.class public final Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;
.super Lio/reactivex/q;
.source "MaybeFlatMapSingleElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$a;,
        Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;
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
.field final a:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;->a:Lio/reactivex/w;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;->b:Lw2/o;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;->b:Lw2/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;-><init>(Lio/reactivex/t;Lw2/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method
