.class public Lcom/papa91/arc/view/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private animResId:I

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mBackgroundDimAmount:F

.field private mBackgroundDimEnabled:Z

.field protected mContext:Landroid/content/Context;

.field private mGravity:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/papa91/arc/view/BaseDialog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/papa91/arc/view/BaseDialog;->mBackgroundDimEnabled:Z

    .line 5
    iput p2, p0, Lcom/papa91/arc/view/BaseDialog;->mGravity:I

    const/high16 p2, 0x3f000000    # 0.5f

    .line 6
    iput p2, p0, Lcom/papa91/arc/view/BaseDialog;->mBackgroundDimAmount:F

    .line 7
    sget p2, Lorg/ppsspp/ppsspp/R$style;->AlphaAnimStyle:I

    iput p2, p0, Lcom/papa91/arc/view/BaseDialog;->animResId:I

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/papa91/arc/view/BaseDialog;->mWidth:I

    .line 9
    iput p2, p0, Lcom/papa91/arc/view/BaseDialog;->mHeight:I

    .line 10
    iput-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyCompat()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/16 v1, 0x1706

    goto :goto_0

    :cond_0
    const/16 v1, 0x707

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private fullScreenImmersive(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1706

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->useLowProfileButtons()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/BaseDialog;->useImmersive()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x1406

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private useImmersive()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/BaseDialog;->updateSystemUiVisibility()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/BaseDialog;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/BaseDialog;->mWidth:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/view/BaseDialog;->applyCompat()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/view/BaseDialog;->updateSystemUiVisibility()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/papa91/arc/view/BaseDialog;->fullScreenImmersive(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAnimResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/BaseDialog;->animResId:I

    return-void
.end method

.method public setBackgroundDimAmount(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/BaseDialog;->mBackgroundDimAmount:F

    return-void
.end method

.method public setBackgroundDimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/BaseDialog;->mBackgroundDimEnabled:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/BaseDialog;->mHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/BaseDialog;->mWidth:I

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 6
    iget v3, p0, Lcom/papa91/arc/view/BaseDialog;->mWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    iget v3, p0, Lcom/papa91/arc/view/BaseDialog;->mHeight:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    iget v3, p0, Lcom/papa91/arc/view/BaseDialog;->mGravity:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    iget v3, p0, Lcom/papa91/arc/view/BaseDialog;->animResId:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    iget-boolean v2, p0, Lcom/papa91/arc/view/BaseDialog;->mBackgroundDimEnabled:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 13
    iget v2, p0, Lcom/papa91/arc/view/BaseDialog;->mBackgroundDimAmount:F

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/papa91/arc/view/BaseDialog;->fullScreenImmersive(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public useLowProfileButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
