.class public final Lio/reactivex/internal/operators/flowable/y;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/y$a;
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
.field private final c:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lw2/q;

.field private final e:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/g;Lw2/q;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;",
            "Lw2/q;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/y;->c:Lw2/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/y;->d:Lw2/q;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/y;->e:Lw2/a;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/y$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/y;->c:Lw2/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/y;->d:Lw2/q;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/y;->e:Lw2/a;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/y$a;-><init>(Ll3/c;Lw2/g;Lw2/q;Lw2/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
