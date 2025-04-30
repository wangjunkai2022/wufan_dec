.class public final Lio/reactivex/internal/operators/single/a;
.super Lio/reactivex/i0;
.source "SingleContains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;

.field final c:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Ljava/lang/Object;Lw2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lw2/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/a;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/a;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/single/a;->c:Lw2/d;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/a;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/a$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/single/a$a;-><init>(Lio/reactivex/internal/operators/single/a;Lio/reactivex/l0;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
