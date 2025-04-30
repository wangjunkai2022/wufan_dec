.class public final Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableOnErrorNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;
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
.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;->c:Lw2/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;->d:Z

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;->c:Lw2/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;-><init>(Ll3/c;Lw2/o;Z)V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
