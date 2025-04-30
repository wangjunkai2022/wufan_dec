.class public final Lio/reactivex/internal/operators/flowable/s0;
.super Lio/reactivex/j;
.source "FlowableNever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
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
    new-instance v0, Lio/reactivex/internal/operators/flowable/s0;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/s0;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/s0;->b:Lio/reactivex/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 1
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
    sget-object v0, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    return-void
.end method
