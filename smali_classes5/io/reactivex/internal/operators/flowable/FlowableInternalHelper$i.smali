.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lw2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/c<",
        "TS;",
        "Lio/reactivex/i<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final a:Lw2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;->a:Lw2/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/reactivex/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/reactivex/i<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;->a:Lw2/b;

    invoke-interface {v0, p1, p2}, Lw2/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lio/reactivex/i;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;->a(Ljava/lang/Object;Lio/reactivex/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
