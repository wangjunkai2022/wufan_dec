.class Lcom/BaseAppCompatActivity$z;
.super Landroid/os/CountDownTimer;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "z"
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method public constructor <init>(Lcom/BaseAppCompatActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$z;->a:Lcom/BaseAppCompatActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity$z;->a:Lcom/BaseAppCompatActivity;

    iget-object v1, v0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "popwindow"

    const-string v1, "onFinish TimeCount dismiss"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/BaseAppCompatActivity$z;->a:Lcom/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object v0, p0, Lcom/BaseAppCompatActivity$z;->a:Lcom/BaseAppCompatActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
