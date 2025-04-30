.class public final Lio/reactivex/internal/operators/flowable/m;
.super Lio/reactivex/j;
.source "FlowableConcatMapEagerPublisher.java"


# annotations
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
.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
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

.field final d:I

.field final e:I

.field final f:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Ll3/b;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/m;->b:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/m;->c:Lw2/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/m;->d:I

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/m;->e:I

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/m;->f:Lio/reactivex/internal/util/ErrorMode;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m;->b:Ll3/b;

    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/m;->c:Lw2/o;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/m;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/flowable/m;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/m;->f:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber;-><init>(Ll3/c;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
