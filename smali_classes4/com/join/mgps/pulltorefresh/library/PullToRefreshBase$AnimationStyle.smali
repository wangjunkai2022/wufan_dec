.class public final enum Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    new-instance v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const-string v3, "FLIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0
.end method
