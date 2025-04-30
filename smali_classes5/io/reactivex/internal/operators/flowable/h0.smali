.class public final Lio/reactivex/internal/operators/flowable/h0;
.super Lio/reactivex/j;
.source "FlowableFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0;->b:Lio/reactivex/z;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0;->b:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/flowable/h0$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/h0$a;-><init>(Ll3/c;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->a(Lio/reactivex/g0;)V

    return-void
.end method
