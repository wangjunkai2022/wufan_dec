.class Lcom/join/mgps/activity/l0$m;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0;->G0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/l0;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$m;->d:Lcom/join/mgps/activity/l0;

    iput p2, p0, Lcom/join/mgps/activity/l0$m;->a:I

    iput p3, p0, Lcom/join/mgps/activity/l0$m;->b:I

    iput p4, p0, Lcom/join/mgps/activity/l0$m;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$m;->d:Lcom/join/mgps/activity/l0;

    iget-boolean v1, v0, Lcom/join/mgps/activity/l0;->F0:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/join/mgps/activity/l0;->G0:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/l0$m;->a:I

    iget v3, p0, Lcom/join/mgps/activity/l0$m;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/join/mgps/activity/l0$m;->c:I

    add-int/2addr v2, v3

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->X(Lcom/join/mgps/activity/l0;)I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/join/mgps/activity/l0$m;->d:Lcom/join/mgps/activity/l0;

    iget v3, v0, Lcom/join/mgps/activity/l0;->H0:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/l0;->m:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    neg-int v1, v2

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    :cond_1
    return-void
.end method
