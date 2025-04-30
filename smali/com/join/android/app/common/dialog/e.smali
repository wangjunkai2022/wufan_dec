.class public Lcom/join/android/app/common/dialog/e;
.super Landroid/app/Dialog;
.source "CommonDialogLoading.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f12014a

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/common/dialog/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f01004a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/dialog/e;->c:Landroid/view/animation/Animation;

    .line 5
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/e;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/android/app/common/dialog/e;->b:Landroid/widget/ImageView;

    const v1, 0x7f080781

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 9
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/dialog/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public show()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/e;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/e;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
