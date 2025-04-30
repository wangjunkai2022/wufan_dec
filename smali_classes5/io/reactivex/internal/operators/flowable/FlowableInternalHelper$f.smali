.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/o<",
        "TT;",
        "Ll3/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;->a:Lw2/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ll3/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ll3/b<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;->a:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The itemDelay returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/b;

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/e1;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/e1;-><init>(Ll3/b;J)V

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->n(Ljava/lang/Object;)Lw2/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/j;->H3(Lw2/o;)Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->y1(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;->a(Ljava/lang/Object;)Ll3/b;

    move-result-object p1

    return-object p1
.end method
