.class public final enum Lcom/mob/tools/gui/SmoothScroller;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/SmoothScroller$LinearDECInterpolator;,
        Lcom/mob/tools/gui/SmoothScroller$LinearACCInterpolator;,
        Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;,
        Lcom/mob/tools/gui/SmoothScroller$DefaultInterpolator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mob/tools/gui/SmoothScroller;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/tools/gui/SmoothScroller;

.field public static final enum DEFAULT:Lcom/mob/tools/gui/SmoothScroller;

.field public static final enum LINEAR_ACC:Lcom/mob/tools/gui/SmoothScroller;

.field public static final enum LINEAR_DEC:Lcom/mob/tools/gui/SmoothScroller;

.field public static final enum OVER_SCROLL:Lcom/mob/tools/gui/SmoothScroller;


# instance fields
.field private interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/mob/tools/gui/SmoothScroller;

    new-instance v1, Lcom/mob/tools/gui/SmoothScroller$DefaultInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/SmoothScroller$DefaultInterpolator;-><init>(Lcom/mob/tools/gui/SmoothScroller$1;)V

    const-string v3, "DEFAULT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/mob/tools/gui/SmoothScroller;->DEFAULT:Lcom/mob/tools/gui/SmoothScroller;

    .line 2
    new-instance v1, Lcom/mob/tools/gui/SmoothScroller;

    new-instance v3, Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;

    invoke-direct {v3, v2}, Lcom/mob/tools/gui/SmoothScroller$OverScrollInterpolator;-><init>(Lcom/mob/tools/gui/SmoothScroller$1;)V

    const-string v5, "OVER_SCROLL"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/mob/tools/gui/SmoothScroller;->OVER_SCROLL:Lcom/mob/tools/gui/SmoothScroller;

    .line 3
    new-instance v3, Lcom/mob/tools/gui/SmoothScroller;

    new-instance v5, Lcom/mob/tools/gui/SmoothScroller$LinearACCInterpolator;

    invoke-direct {v5, v2}, Lcom/mob/tools/gui/SmoothScroller$LinearACCInterpolator;-><init>(Lcom/mob/tools/gui/SmoothScroller$1;)V

    const-string v7, "LINEAR_ACC"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v5}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V

    sput-object v3, Lcom/mob/tools/gui/SmoothScroller;->LINEAR_ACC:Lcom/mob/tools/gui/SmoothScroller;

    .line 4
    new-instance v5, Lcom/mob/tools/gui/SmoothScroller;

    new-instance v7, Lcom/mob/tools/gui/SmoothScroller$LinearDECInterpolator;

    invoke-direct {v7, v2}, Lcom/mob/tools/gui/SmoothScroller$LinearDECInterpolator;-><init>(Lcom/mob/tools/gui/SmoothScroller$1;)V

    const-string v2, "LINEAR_DEC"

    const/4 v9, 0x3

    invoke-direct {v5, v2, v9, v7}, Lcom/mob/tools/gui/SmoothScroller;-><init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V

    sput-object v5, Lcom/mob/tools/gui/SmoothScroller;->LINEAR_DEC:Lcom/mob/tools/gui/SmoothScroller;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/mob/tools/gui/SmoothScroller;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    .line 5
    sput-object v2, Lcom/mob/tools/gui/SmoothScroller;->$VALUES:[Lcom/mob/tools/gui/SmoothScroller;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/mob/tools/gui/SmoothScroller;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/tools/gui/SmoothScroller;
    .locals 1

    .line 1
    const-class v0, Lcom/mob/tools/gui/SmoothScroller;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mob/tools/gui/SmoothScroller;

    return-object p0
.end method

.method public static values()[Lcom/mob/tools/gui/SmoothScroller;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/tools/gui/SmoothScroller;->$VALUES:[Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v0}, [Lcom/mob/tools/gui/SmoothScroller;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/tools/gui/SmoothScroller;

    return-object v0
.end method


# virtual methods
.method public getScroller(Landroid/content/Context;)Landroid/widget/Scroller;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/mob/tools/gui/SmoothScroller;->interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method
