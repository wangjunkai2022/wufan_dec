.class public final Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final d:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT",
            "Left;",
            "+",
            "Ll3/b<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final e:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TTRight;+",
            "Ll3/b<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final f:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/j<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ll3/b;Lw2/o;Lw2/o;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT",
            "Left;",
            ">;",
            "Ll3/b<",
            "+TTRight;>;",
            "Lw2/o<",
            "-TT",
            "Left;",
            "+",
            "Ll3/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lw2/o<",
            "-TTRight;+",
            "Ll3/b<",
            "TTRightEnd;>;>;",
            "Lw2/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/j<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->c:Ll3/b;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->d:Lw2/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->e:Lw2/o;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->f:Lw2/c;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->d:Lw2/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->e:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->f:Lw2/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;-><init>(Ll3/c;Lw2/o;Lw2/o;Lw2/c;)V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;Z)V

    .line 4
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->d:Lio/reactivex/disposables/a;

    invoke-virtual {v1, p1}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    .line 5
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;Z)V

    .line 6
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription;->d:Lio/reactivex/disposables/a;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;->c:Ll3/b;

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
