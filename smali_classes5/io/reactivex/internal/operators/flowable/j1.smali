.class public final Lio/reactivex/internal/operators/flowable/j1;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/j1$a;,
        Lio/reactivex/internal/operators/flowable/j1$b;,
        Lio/reactivex/internal/operators/flowable/j1$d;,
        Lio/reactivex/internal/operators/flowable/j1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field final d:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TB;+",
            "Ll3/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ll3/b;Lw2/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ll3/b<",
            "TB;>;",
            "Lw2/o<",
            "-TB;+",
            "Ll3/b<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/j1;->c:Ll3/b;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/j1;->d:Lw2/o;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/j1;->e:I

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/j1$c;

    new-instance v2, Lio/reactivex/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/subscribers/e;-><init>(Ll3/c;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/j1;->c:Ll3/b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/j1;->d:Lw2/o;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/j1;->e:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/flowable/j1$c;-><init>(Ll3/c;Ll3/b;Lw2/o;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
