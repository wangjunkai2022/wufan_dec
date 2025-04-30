.class public Lcom/papa91/arc/view/GameTimeLimitedDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "GameTimeLimitedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;
    }
.end annotation


# instance fields
.field private adConfig:Ljava/lang/String;

.field close:Landroid/view/View;

.field context:Landroid/content/Context;

.field private lBtnText:Ljava/lang/String;

.field private lBtnUrl:Ljava/lang/String;

.field onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

.field private pref:Lcom/papa91/wrapper/UserPrefs;

.field private rBtnText:Ljava/lang/String;

.field textView17:Landroid/widget/TextView;

.field tip:Landroid/widget/TextView;

.field private tipText:Ljava/lang/String;

.field video:Landroid/view/View;

.field viewType:I

.field vip:Landroid/widget/TextView;


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

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sget p2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->init()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 2
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    return-void
.end method

.method public getOnTimeLimitedListener()Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    return-object v0
.end method

.method init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->pref:Lcom/papa91/wrapper/UserPrefs;

    return-void
.end method

.method initViews()V
    .locals 7

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tip:Landroid/widget/TextView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->video:Landroid/view/View;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->vip:Landroid/widget/TextView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->close:Landroid/view/View;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->textView17:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->textView17:Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->vip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->rBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->pref:Lcom/papa91/wrapper/UserPrefs;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tip:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u60a8\u5c06\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2\u540e"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tipText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->video:Landroid/view/View;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->vip:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->close:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->setOnListener([Landroid/view/View;)V

    return-void
.end method

.method public isNetworkConnected()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;->onExit()V

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;->onBuyVip(Ljava/lang/String;)V

    :cond_2
    const-string p1, "PSPLimitMember"

    .line 7
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    if-ne p1, v0, :cond_5

    const-string p1, "PSPLimitPlay"

    .line 9
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8bf7\u8054\u7f51\u7ee7\u7eed\u6e38\u620f"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->startVideo()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setAdConfig(Ljava/lang/String;)V
    .locals 5

    const-string v0, "r_btn_text"

    const-string v1, "l_btn_url"

    const-string v2, "l_btn_text"

    const-string v3, "tip_text"

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->adConfig:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tipText:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnText:Ljava/lang/String;

    .line 8
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnUrl:Ljava/lang/String;

    .line 10
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->rBtnText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method varargs setOnListener([Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 12
    :goto_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    return-void
.end method

.method public show1()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_time_limited1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->initViews()V

    .line 4
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show()V

    return-void
.end method

.method public show2()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_time_limited2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->initViews()V

    .line 5
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show()V

    return-void
.end method

.method public updateTickTime(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u5c06\u5728"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\u540e\uff0c"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tipText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
