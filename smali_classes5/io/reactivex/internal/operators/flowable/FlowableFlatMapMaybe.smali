.class public final Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableFlatMapMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->c:Lw2/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->d:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->e:I

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->c:Lw2/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;-><init>(Ll3/c;Lw2/o;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
