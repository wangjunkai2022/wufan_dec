.class Lcom/join/mgps/activity/PapaMainV2Fragment$d;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV2Fragment;->A1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/dto/VipPopData;

.field final synthetic c:Lcom/join/mgps/activity/PapaMainV2Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV2Fragment;Landroid/view/View;Lcom/join/mgps/dto/VipPopData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->c:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iput-object p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->b:Lcom/join/mgps/dto/VipPopData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->c:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iget-object p1, p1, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->c:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iget v0, p1, Lcom/join/mgps/activity/PapaMainV2Fragment;->F0:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/join/mgps/activity/PapaMainV2Fragment;->F0:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->c:Lcom/join/mgps/activity/PapaMainV2Fragment;

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->b:Lcom/join/mgps/dto/VipPopData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/VipPopData;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$d;->b:Lcom/join/mgps/dto/VipPopData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/VipPopData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->E0(ILjava/lang/String;)V

    return-void
.end method
