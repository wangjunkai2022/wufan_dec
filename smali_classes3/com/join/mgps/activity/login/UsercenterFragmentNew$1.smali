.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;
.super Ljava/lang/Object;
.source "UsercenterFragmentNew.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p2

    const/16 p3, 0x8

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-static {p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f01003a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, p3, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-static {p1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f010031

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p2, p2, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->titleLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method
