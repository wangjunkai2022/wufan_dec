.class public final Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;
.super Lio/reactivex/i0;
.source "FlowableSequenceEqualSingle.java"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lx2/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Ll3/b;Ll3/b;Lw2/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "+TT;>;",
            "Lw2/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->a:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->b:Ll3/b;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->c:Lw2/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->d:I

    return-void
.end method


# virtual methods
.method public Y0(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->d:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->c:Lw2/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;-><init>(Lio/reactivex/l0;ILw2/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->a:Ll3/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->b:Ll3/b;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->d(Ll3/b;Ll3/b;)V

    return-void
.end method

.method public d()Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->a:Ll3/b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->b:Ll3/b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->c:Lw2/d;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;-><init>(Ll3/b;Ll3/b;Lw2/d;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method
