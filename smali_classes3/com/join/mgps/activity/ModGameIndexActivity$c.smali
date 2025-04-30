.class Lcom/join/mgps/activity/ModGameIndexActivity$c;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ModGameIndexActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->S1(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$c;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    iput p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$c;->a:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$c;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$c;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 4
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    return p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
