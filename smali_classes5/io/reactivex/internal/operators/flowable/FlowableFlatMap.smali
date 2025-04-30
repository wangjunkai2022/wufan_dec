.class public final Lio/reactivex/internal/operators/flowable/FlowableFlatMap;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->c:Lw2/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->d:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->e:I

    .line 5
    iput p5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->f:I

    return-void
.end method

.method public static J8(Ll3/c;Lw2/o;ZII)Lio/reactivex/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/c<",
            "-TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;ZII)",
            "Lio/reactivex/o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;-><init>(Ll3/c;Lw2/o;ZII)V

    return-object v6
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->c:Lw2/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/w0;->b(Ll3/b;Ll3/c;Lw2/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->c:Lw2/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->d:Z

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->e:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->f:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->J8(Ll3/c;Lw2/o;ZII)Lio/reactivex/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
