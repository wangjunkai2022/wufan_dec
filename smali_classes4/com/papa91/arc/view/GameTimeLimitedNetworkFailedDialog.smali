.class public Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "GameTimeLimitedNetworkFailedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;
    }
.end annotation


# instance fields
.field close:Landroid/view/View;

.field context:Landroid/content/Context;

.field onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

.field private pref:Lcom/papa91/wrapper/UserPrefs;

.field tip:Landroid/widget/TextView;

.field video:Landroid/view/View;

.field vip:Landroid/view/View;


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
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->init()V

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
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->init()V

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

.method public getOnTimeLimitedListener()Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

    return-object v0
.end method

.method init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->pref:Lcom/papa91/wrapper/UserPrefs;

    return-void
.end method

.method initViews()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->tip:Landroid/widget/TextView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->video:Landroid/view/View;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->vip:Landroid/view/View;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->close:Landroid/view/View;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    .line 5
    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->video:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->vip:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->setOnListener([Landroid/view/View;)V

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

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;->onExit()V

    :cond_1
    const-string p1, "PSPLimitQuit"

    .line 5
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    if-ne p1, v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8bf7\u8054\u7f51\u7ee7\u7eed\u6e38\u620f"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->startVideo()V

    :cond_4
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

.method public setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->dialog_time_limited_network_failed:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->initViews()V

    .line 4
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 5
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 16
    :goto_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    return-void
.end method
