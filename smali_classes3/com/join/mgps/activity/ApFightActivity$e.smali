.class Lcom/join/mgps/activity/ApFightActivity$e;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Ll1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ApFightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const v2, 0x7f080090

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->dismissLoading()V

    .line 21
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x2

    const-string v2, "\u521b\u5efa\u70ed\u70b9\u5931\u8d25!"

    invoke-virtual {p1, v0, v2, v1}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lcom/join/mgps/dialog/o0;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const v2, 0x7f12014a

    invoke-direct {p1, v0, v2}, Lcom/join/mgps/dialog/o0;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 5
    iput-boolean v2, v0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v0

    const-string v3, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    const-string v4, "\u8fde\u63a5\u5df2\u65ad\u5f00,\u7b49\u5f85\u5c0f\u4f19\u4f34\u8fde\u63a5"

    const-string v5, ""

    const-string v6, "\u670d\u52a1\u5668\u65ad\u5f00\u8bf7\u91cd\u65b0\u8fde\u63a5"

    const v7, 0x7f080090

    const-string v8, "\u6211\u662f\u5ba2\u673a"

    const-string v9, "\u6211\u662f\u4e3b\u673a"

    const v10, 0x7f12014a

    const v11, 0x7f0808f6

    const/4 v12, 0x0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$900(Lcom/join/mgps/activity/ApFightActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->isWifiConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v1, Lcom/join/mgps/dialog/l0;

    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {v1, v3, v10}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dialog/l0;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$e$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$e$a;-><init>(Lcom/join/mgps/activity/ApFightActivity$e;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x6

    .line 33
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    goto/16 :goto_4

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v6, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    const-string v13, "12345678"

    invoke-virtual {v0, v6, v13, v12}, Lcom/join/mgps/Util/WifiUtils;->setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v6, Lcom/join/mgps/dialog/l0;

    iget-object v13, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {v6, v13, v10}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v6}, Lcom/join/mgps/activity/ApFightActivity;->access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dialog/l0;

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v2, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->g(I)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->c(I)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/join/mgps/dialog/l0;->a(I)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$900(Lcom/join/mgps/activity/ApFightActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    :try_start_2
    new-instance v0, Lcom/join/mgps/dialog/d2;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {v0, v1, v10}, Lcom/join/mgps/dialog/d2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->disConnect()V

    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDownServer()V

    .line 80
    :try_start_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v6, Lcom/join/mgps/dialog/l0;

    iget-object v13, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {v6, v13, v10}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v6}, Lcom/join/mgps/activity/ApFightActivity;->access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dialog/l0;

    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v2, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->g(I)V

    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->c(I)V

    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/join/mgps/dialog/l0;->a(I)V

    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method onSearchTimeout,step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/join/mgps/activity/ApFightActivity;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 4
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u7b49\u5f85\u4e3b\u673a\u5f00\u59cb\u6e38\u620f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/c2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    const/4 v0, 0x3

    .line 2
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/ApFightActivity;->access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/c2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    const-string v3, "12345678"

    invoke-virtual {v0, v2, v3, v1}, Lcom/join/mgps/Util/WifiUtils;->setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x4

    .line 3
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v1, Lcom/join/mgps/dialog/n0;

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const v3, 0x7f12014a

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/dialog/n0;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$602(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/n0;)Lcom/join/mgps/dialog/n0;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/n0;->a(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$e$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$e$b;-><init>(Lcom/join/mgps/activity/ApFightActivity$e;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClient()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClientWifi()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightClient()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1200(Lcom/join/mgps/activity/ApFightActivity;)V

    const-string v0, "_"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const v2, 0x7f12014a

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v3, Lcom/join/mgps/dialog/c2;

    iget-object v4, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v5, v4, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {v3, v4, v2, v5, p1}, Lcom/join/mgps/dialog/c2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/c2;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    new-instance v4, Lcom/join/mgps/dialog/c2;

    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v6, v5, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-direct {v4, v5, v2, v6, p1}, Lcom/join/mgps/dialog/c2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/c2;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/c2;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 6
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssid"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "\""

    const-string v3, ""

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ApFightActivity;->access$900(Lcom/join/mgps/activity/ApFightActivity;)Z

    move-result v2

    const v3, 0x7f08008b

    const v5, 0x7f08040e

    const/16 v6, 0x8

    if-eqz v2, :cond_5

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->apName()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/WifiUtils;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v1

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u623f\u95f4\u53f7"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e3b\u673a\u5f00\u59cb\u6e38\u620f..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0, v4}, Lcom/join/mgps/activity/ApFightActivity;->access$1102(Lcom/join/mgps/activity/ApFightActivity;Z)Z

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v2, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->showP2Frame()V

    .line 25
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    const-string v0, "\u4e3b\u673a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f08040f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$1200(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget v2, v2, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v4}, Lcom/join/mgps/activity/ApFightActivity;->access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v3, v4, v5}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/papa/sim/statistic/p;->q1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->openBeginAnim()V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->showP1Frame()V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    const-string v0, "\u5c0f\u4f19\u4f34\u5df2\u5230\u4f4d\uff0c\u5feb\u70b9\u5f00\u59cb\u5427\uff01"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbl>>>method onSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ApFightActivity;->access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$300(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iput-object p1, v0, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u623f\u95f4\u53f7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    move-result v0

    const v3, 0x7f080091

    const-string v4, "\u7b49\u5f85\u5c0f\u4f19\u4f34\u52a0\u5165..."

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->showP1Frame()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const v5, 0x7f08008a

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f60\u5df2\u521b\u5efa\u70ed\u70b9\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip2:Landroid/widget/TextView;

    const-string v2, "IP: 192.168.43.1"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ApFightActivity;->access$400(Lcom/join/mgps/activity/ApFightActivity;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->ssidTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->ipTxt:Landroid/widget/TextView;

    const-string v0, "192.168.43.1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt2:Landroid/widget/TextView;

    const-string v0, "\u2461 \u8ba9\u5c0f\u4f19\u4f34\u70b9\u51fb\u201c\u81ea\u52a8\u52a0\u5165\u201d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->ip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u8fde\u63a5"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v5}, Lcom/join/android/app/common/utils/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",IP\u4e3a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v5}, Lcom/join/android/app/common/utils/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingTip1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f60\u5df2\u8fdeWIFI\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingTip2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ApFightActivity;->access$400(Lcom/join/mgps/activity/ApFightActivity;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->ssidTxt:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->ipTxt:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2461 \u8ba9\u5c0f\u4f19\u4f34\u8f93\u5165IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt1:Landroid/widget/TextView;

    const-string v0, "\u4f60\u5df2\u8fde\u63a5WIFI\uff1a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->ip_lay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f08040f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->showP1Frame()V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->dismissLoading()V

    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/n0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    return-void
.end method
