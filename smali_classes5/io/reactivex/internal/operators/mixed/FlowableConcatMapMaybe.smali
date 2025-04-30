.class public final Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;
.super Lio/reactivex/j;
.source "FlowableConcatMapMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;
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
.field final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field final d:Lio/reactivex/internal/util/ErrorMode;

.field final e:I


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
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->b:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->c:Lw2/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->d:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->e:I

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
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->c:Lw2/o;

    iget v3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->e:I

    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe;->d:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;-><init>(Ll3/c;Lw2/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
