.class Lcom/BaseFragmentActivity$r;
.super Landroid/os/CountDownTimer;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "r"
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/BaseFragmentActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$r;->a:Lcom/BaseFragmentActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseFragmentActivity$r;->a:Lcom/BaseFragmentActivity;

    iget-object v1, v0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/BaseFragmentActivity$r;->a:Lcom/BaseFragmentActivity;

    iget-object v0, v0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/BaseFragmentActivity$r;->a:Lcom/BaseFragmentActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
