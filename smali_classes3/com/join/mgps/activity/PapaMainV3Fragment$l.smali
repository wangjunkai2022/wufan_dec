.class Lcom/join/mgps/activity/PapaMainV3Fragment$l;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "PapaMainV3Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$l;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
