.class public Lcom/join/mgps/activity/NewArenaMainActivty;
.super Lcom/join/mgps/activity/FriendActivity;
.source "NewArenaMainActivty.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c007d
.end annotation


# instance fields
.field private A0:Landroid/view/animation/Animation;

.field private B0:Lcom/join/mgps/fragment/o3;

.field private C0:Landroidx/fragment/app/FragmentManager;

.field private o0:Landroid/content/Context;

.field p0:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Landroid/widget/TextView;

.field s0:Landroid/widget/LinearLayout;

.field t0:Landroid/widget/TextView;

.field u0:Lcom/join/mgps/customview/ScrollTextViewLayout;

.field v0:Landroid/widget/ImageView;

.field w0:Landroid/widget/ImageView;

.field x0:Landroid/widget/ImageView;

.field private y0:I

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->o0:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->y0:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->z0:I

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 7
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->C0:Landroidx/fragment/app/FragmentManager;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->o0:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c01c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09015e

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const v2, 0x7f0903c0

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->s0:Landroid/widget/LinearLayout;

    const v2, 0x7f090dc8

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/customview/ScrollTextViewLayout;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->u0:Lcom/join/mgps/customview/ScrollTextViewLayout;

    const v2, 0x7f090dc7

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->t0:Landroid/widget/TextView;

    const v2, 0x7f090646

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->v0:Landroid/widget/ImageView;

    const v2, 0x7f0903c1

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->w0:Landroid/widget/ImageView;

    const v2, 0x7f0906a2

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->x0:Landroid/widget/ImageView;

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->s0:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->p0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->p0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->B0:Lcom/join/mgps/fragment/o3;

    if-nez v1, :cond_2

    .line 23
    new-instance v1, Lcom/join/mgps/fragment/p3;

    invoke-direct {v1}, Lcom/join/mgps/fragment/p3;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->B0:Lcom/join/mgps/fragment/o3;

    const v2, 0x7f090a50

    .line 24
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->checkDownlodingNumber()V

    return-void
.end method

.method checkDownlodingNumber()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->O()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->y0:I

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/f;->S(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->z0:I

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->W()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateLine(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->y0:I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateDownloadingPoint(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->z0:I

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateNoOpenPoint()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->updateHidePoint()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "BATTLE_HOME_PAGE"

    .line 1
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->i:Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->checkDownlodingNumber()V

    :cond_0
    return-void
.end method

.method startLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->w0:Landroid/widget/ImageView;

    const v1, 0x7f080763

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f010030

    .line 2
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->A0:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->x0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->x0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->A0:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->A0:Landroid/view/animation/Animation;

    new-instance v1, Lcom/join/mgps/activity/NewArenaMainActivty$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NewArenaMainActivty$a;-><init>(Lcom/join/mgps/activity/NewArenaMainActivty;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method stopLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->x0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->x0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->w0:Landroid/widget/ImageView;

    const v1, 0x7f08076a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f070ddc

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-ge p1, v4, :cond_0

    .line 2
    iget-object v4, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const v3, 0x7f080888

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070991

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v5, 0x4

    .line 13
    invoke-virtual {v4, v1, v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const v3, 0x7f0807cd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateHidePoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->stopLineAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateLine(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->u0:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0809a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->stopLineAnimation()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->w0:Landroid/widget/ImageView;

    const v0, 0x7f080763

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->startLineAnimation()V

    :goto_0
    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NewArenaMainActivty;->stopLineAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NewArenaMainActivty;->r0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method y1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method z1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method
