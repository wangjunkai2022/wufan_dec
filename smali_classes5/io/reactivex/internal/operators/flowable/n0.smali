.class public final Lio/reactivex/internal/operators/flowable/n0;
.super Lio/reactivex/q;
.source "FlowableLastMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/n0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/n0;->a:Ll3/b;

    return-void
.end method


# virtual methods
.method protected o1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/n0;->a:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/n0$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/n0$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
