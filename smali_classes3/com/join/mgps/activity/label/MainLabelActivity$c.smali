.class Lcom/join/mgps/activity/label/MainLabelActivity$c;
.super Ljava/lang/Object;
.source "MainLabelActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;->M0(Lcom/join/mgps/dto/MainLabelBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->A:[Lcom/join/mgps/fragment/d3;

    aget-object p1, v0, p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/fragment/c3;->V()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->s:Lcom/join/mgps/customview/MainLabelHeaderView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0806d0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->s:Lcom/join/mgps/customview/MainLabelHeaderView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0806cf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
