.class Lcom/join/mgps/activity/MGGameDetailActivity$u;
.super Ljava/lang/Object;
.source "MGGameDetailActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    const p1, 0x7f060364

    const/16 p3, 0x15

    const/16 p4, 0x8

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->O0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    move-result p2

    const v1, 0x7f0603b7

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->a:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_4

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/manager/b;->n(I)V

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->O0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->a:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_4

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/manager/b;->n(I)V

    goto/16 :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p3, :cond_4

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p3, :cond_4

    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    goto :goto_0

    .line 26
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 28
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGGameDetailActivity;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p3, :cond_4

    .line 30
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$u;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/android/app/common/manager/b;->n(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
