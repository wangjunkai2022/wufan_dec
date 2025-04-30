.class public final Lio/reactivex/internal/operators/flowable/b0;
.super Lio/reactivex/j;
.source "FlowableEmpty.java"

# interfaces
.implements Lx2/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
        "Ljava/lang/Object;",
        ">;",
        "Lx2/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/b0;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/b0;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/b0;->b:Lio/reactivex/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h6(Ll3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Ll3/c;)V

    return-void
.end method
