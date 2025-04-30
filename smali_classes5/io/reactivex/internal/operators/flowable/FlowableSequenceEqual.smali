.class public final Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;
.super Lio/reactivex/j;
.source "FlowableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;,
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final e:I


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
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->b:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->c:Ll3/b;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->d:Lw2/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->e:I

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->e:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->d:Lw2/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;-><init>(Ll3/c;ILw2/d;)V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->b:Ll3/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->c:Ll3/b;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->h(Ll3/b;Ll3/b;)V

    return-void
.end method
