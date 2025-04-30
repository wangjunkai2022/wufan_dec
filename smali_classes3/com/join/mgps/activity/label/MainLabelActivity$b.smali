.class Lcom/join/mgps/activity/label/MainLabelActivity$b;
.super Ljava/lang/Object;
.source "MainLabelActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/ForumBaseHeaderView$a;


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
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->n:Lru/noties/scrollable/ScrollableLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->o:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/label/MainLabelActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/label/MainLabelActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/label/MainLabelActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    :cond_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->o:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
