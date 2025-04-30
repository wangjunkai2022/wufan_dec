.class synthetic Lcom/join/mgps/pulltorefresh/library/d$a;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pulltorefresh/library/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/join/mgps/pulltorefresh/library/d$a;->a:[I

    :try_start_0
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/d$a;->a:[I

    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
