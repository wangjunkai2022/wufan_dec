.class public final Lio/reactivex/internal/operators/flowable/n;
.super Lio/reactivex/j;
.source "FlowableConcatMapPublisher.java"


# annotations
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
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Ll3/b;Lw2/o;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n;->b:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/n;->c:Lw2/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/n;->d:I

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/n;->e:Lio/reactivex/internal/util/ErrorMode;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n;->b:Ll3/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n;->c:Lw2/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/w0;->b(Ll3/b;Ll3/c;Lw2/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n;->b:Ll3/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n;->c:Lw2/o;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/n;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/n;->e:Lio/reactivex/internal/util/ErrorMode;

    invoke-static {p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;->J8(Ll3/c;Lw2/o;ILio/reactivex/internal/util/ErrorMode;)Ll3/c;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
