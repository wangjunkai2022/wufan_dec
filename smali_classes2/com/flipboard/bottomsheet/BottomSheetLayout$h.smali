.class Lcom/flipboard/bottomsheet/BottomSheetLayout$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$h;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$h;->a:Z

    return-void
.end method
