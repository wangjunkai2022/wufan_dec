.class Lcom/join/mgps/activity/label/MainLabelActivity$a;
.super Ljava/lang/Object;
.source "MainLabelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/label/MainLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->A:[Lcom/join/mgps/fragment/d3;

    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->o:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    aget-object p1, v0, p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/fragment/c3;->V()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/label/MainLabelActivity;->s:Lcom/join/mgps/customview/MainLabelHeaderView;

    invoke-virtual {v2}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0806cf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/c3;->i0(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/label/MainLabelActivity;->s:Lcom/join/mgps/customview/MainLabelHeaderView;

    invoke-virtual {v2}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0806d0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget v3, v3, Lcom/join/mgps/activity/label/MainLabelActivity;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/c3;->i0(Ljava/lang/String;)V

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/c3;->m0(Z)V

    return-void
.end method
