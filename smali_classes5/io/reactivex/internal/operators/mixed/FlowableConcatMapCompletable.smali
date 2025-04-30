.class public final Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;
.super Lio/reactivex/a;
.source "FlowableConcatMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->a:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->b:Lw2/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->d:I

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->b:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->c:Lio/reactivex/internal/util/ErrorMode;

    iget v4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;-><init>(Lio/reactivex/d;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
