.class Lcom/join/mgps/activity/g0$j;
.super Ljava/lang/Object;
.source "GamedetialModleBtFragemnt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g0;->v0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Lcom/join/mgps/activity/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g0;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g0$j;->c:Lcom/join/mgps/activity/g0;

    iput-object p2, p0, Lcom/join/mgps/activity/g0$j;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lcom/join/mgps/activity/g0$j;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g0$j;->c:Lcom/join/mgps/activity/g0;

    iget-object v1, v0, Lcom/join/mgps/activity/g0;->v0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/join/mgps/activity/g0$j;->c:Lcom/join/mgps/activity/g0;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0711c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/join/mgps/activity/g0;->G0:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/g0$j;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/join/mgps/activity/g0$j;->c:Lcom/join/mgps/activity/g0;

    iget v2, v1, Lcom/join/mgps/activity/g0;->G0:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/g0$j;->b:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v1, v1, Lcom/join/mgps/activity/g0;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
