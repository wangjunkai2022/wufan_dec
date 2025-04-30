.class public final Lio/reactivex/internal/operators/single/SingleFlatMapPublisher;
.super Lio/reactivex/j;
.source "SingleFlatMapPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleFlatMapPublisher$SingleFlatMapPublisherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
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
            "Ll3/b<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapPublisher;->b:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapPublisher;->c:Lw2/o;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapPublisher;->b:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMapPublisher$SingleFlatMapPublisherObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapPublisher;->c:Lw2/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleFlatMapPublisher$SingleFlatMapPublisherObserver;-><init>(Ll3/c;Lw2/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
