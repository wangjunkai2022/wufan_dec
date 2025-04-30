.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/o<",
        "TT;",
        "Ll3/b<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field private final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw2/c;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/c<",
            "-TT;-TU;+TR;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "+TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->a:Lw2/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->b:Lw2/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ll3/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ll3/b<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->b:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/b;

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/r0;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$d;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->a:Lw2/c;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$d;-><init>(Lw2/c;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/r0;-><init>(Ll3/b;Lw2/o;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;->a(Ljava/lang/Object;)Ll3/b;

    move-result-object p1

    return-object p1
.end method
