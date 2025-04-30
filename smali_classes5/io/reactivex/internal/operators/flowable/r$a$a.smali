.class final Lio/reactivex/internal/operators/flowable/r$a$a;
.super Ljava/lang/Object;
.source "FlowableDelaySubscriptionOther.java"

# interfaces
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Ll3/d;

.field final synthetic b:Lio/reactivex/internal/operators/flowable/r$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/r$a;Ll3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r$a$a;->b:Lio/reactivex/internal/operators/flowable/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/r$a$a;->a:Ll3/d;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a$a;->a:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
