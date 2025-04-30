.class Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;
.super Ljava/lang/Object;
.source "GamedetailVideoMainActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->shakeAnim()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    iget v2, v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$100(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
