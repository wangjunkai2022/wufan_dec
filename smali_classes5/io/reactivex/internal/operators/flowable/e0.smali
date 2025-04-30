.class public final Lio/reactivex/internal/operators/flowable/e0;
.super Lio/reactivex/j;
.source "FlowableFlatMapPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ll3/b;Lw2/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e0;->b:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/e0;->c:Lw2/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/e0;->d:Z

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/e0;->e:I

    .line 6
    iput p5, p0, Lio/reactivex/internal/operators/flowable/e0;->f:I

    return-void
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e0;->b:Ll3/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/e0;->c:Lw2/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/w0;->b(Ll3/b;Ll3/c;Lw2/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e0;->b:Ll3/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/e0;->c:Lw2/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/e0;->d:Z

    iget v3, p0, Lio/reactivex/internal/operators/flowable/e0;->e:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/e0;->f:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap;->J8(Ll3/c;Lw2/o;ZII)Lio/reactivex/o;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
