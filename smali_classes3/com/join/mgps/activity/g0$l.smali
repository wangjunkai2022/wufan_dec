.class Lcom/join/mgps/activity/g0$l;
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
.field final synthetic a:Lcom/join/mgps/activity/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g0$l;->a:Lcom/join/mgps/activity/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g0$l;->a:Lcom/join/mgps/activity/g0;

    iget-object v1, v0, Lcom/join/mgps/activity/g0;->x0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/join/mgps/activity/g0$l;->a:Lcom/join/mgps/activity/g0;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/join/mgps/activity/g0;->H0:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/g0$l;->a:Lcom/join/mgps/activity/g0;

    iget-object v1, v0, Lcom/join/mgps/activity/g0;->w0:Landroid/widget/RelativeLayout;

    iget v0, v0, Lcom/join/mgps/activity/g0;->H0:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    return-void
.end method
