.class Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;
.super Ljava/lang/Object;
.source "GamedetailVideoMainActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->shakeAnimback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget v2, v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    return-void
.end method
