.class public Lcom/join/mgps/dialog/x1;
.super Landroid/app/AlertDialog;
.source "StickAdDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/x1$a;,
        Lcom/join/mgps/dialog/x1$b;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field private f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

.field private g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field private i:Z

.field private j:Lcom/join/mgps/dialog/x1$a;

.field k:Lcom/join/mgps/dialog/x1$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/x1;->i:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->h:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/dialog/x1;->i:Z

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dialog/x1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getTip_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getT_btn_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getB_btn_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getCorner_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/x1$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x1$b;-><init>(Lcom/join/mgps/dialog/x1;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/x1;->k:Lcom/join/mgps/dialog/x1$b;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/x1;->k:Lcom/join/mgps/dialog/x1$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gameId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->g:Ljava/lang/String;

    return-void
.end method

.method public d(Lcom/join/mgps/dialog/x1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->j:Lcom/join/mgps/dialog/x1$a;

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->k:Lcom/join/mgps/dialog/x1$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/x1;->k:Lcom/join/mgps/dialog/x1$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dialog/x1;->k:Lcom/join/mgps/dialog/x1$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->e(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/ad/a;->b()V

    .line 5
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->j:Lcom/join/mgps/dialog/x1$a;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/dialog/x1;->i:Z

    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/x1$a;->b(Z)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/dialog/x1;->i:Z

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Close:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/x1;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Close:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/x1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/x1;->dismiss()V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    .line 9
    iget-boolean p1, p0, Lcom/join/mgps/dialog/x1;->i:Z

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getB_btn_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/dialog/x1;->f:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getB_btn_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    :cond_3
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Buy:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/x1;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->j:Lcom/join/mgps/dialog/x1$a;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 14
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/x1$a;->b(Z)V

    .line 15
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Buy:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/x1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/x1;->dismiss()V

    goto :goto_2

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    .line 18
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->j:Lcom/join/mgps/dialog/x1$a;

    if-eqz p1, :cond_7

    .line 19
    invoke-interface {p1}, Lcom/join/mgps/dialog/x1$a;->a()V

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/dialog/x1;->dismiss()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0x7f0c01aa

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0907ee

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->a:Landroid/widget/ImageView;

    const p1, 0x7f0910c2

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->b:Landroid/widget/TextView;

    const p1, 0x7f091150

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->c:Landroid/widget/TextView;

    const p1, 0x7f091152

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->e:Landroid/widget/TextView;

    const p1, 0x7f0911a3

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/x1;->d:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/x1;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/x1;->j:Lcom/join/mgps/dialog/x1$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/join/mgps/dialog/x1$a;->onShow()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/dialog/x1;->e()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dialog/x1;->a()V

    return-void
.end method
