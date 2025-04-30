.class public Lorg/ppsspp/ppsspp/PpssppActivity;
.super Lorg/ppsspp/ppsspp/NativeActivity;
.source "PpssppActivity.java"


# static fields
.field public static final SHORTCUT_EXTRA_KEY:Ljava/lang/String; = "org.ppsspp.ppsspp.Shortcuts"

.field private static final TAG:Ljava/lang/String; = "PpssppActivity"

.field public static libraryLoaded:Z

.field private static m_hasNoNativeBinary:Z

.field private static m_hasUnsupportedABI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;-><init>()V

    return-void
.end method

.method public static CheckABIAndLoadLibrary()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit CheckABIAndLoadLibrary "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sput-boolean v1, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasUnsupportedABI:Z

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libppsspp_jni.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 5
    sput-boolean v1, Lorg/ppsspp/ppsspp/PpssppActivity;->libraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadLibrary failed, UnsatifiedLinkError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sput-boolean v1, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasNoNativeBinary:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasUnsupportedABI:Z

    return v0
.end method


# virtual methods
.method public IsHapticFeedbackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsSoundEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMiniRankTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRankAutoUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowCheating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowGate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowOnekey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowQuickSlot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needShowBottomBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needShowTimer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAdImageClick()V
    .locals 0

    return-void
.end method

.method public onChangeDisk()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/PpssppActivity;->CheckABIAndLoadLibrary()V

    .line 2
    sget-boolean v0, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasUnsupportedABI:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasNoNativeBinary:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found Shortcut Parameter in data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-super {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->setShortcutParam(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.ppsspp.ppsspp.Shortcuts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found Shortcut Parameter in extra-data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->setShortcutParam(Ljava/lang/String;)V

    .line 11
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 12
    :cond_3
    :goto_1
    new-instance p1, Lorg/ppsspp/ppsspp/PpssppActivity$a;

    invoke-direct {p1, p0}, Lorg/ppsspp/ppsspp/PpssppActivity$a;-><init>(Lorg/ppsspp/ppsspp/PpssppActivity;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0xbb8

    .line 14
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    const/4 p1, -0x1

    .line 16
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onHideMenu()V
    .locals 0

    return-void
.end method

.method public onScreenShot()V
    .locals 0

    return-void
.end method

.method public postCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/ppsspp/ppsspp/PpssppActivity$b;

    invoke-direct {v0, p0, p1, p2}, Lorg/ppsspp/ppsspp/PpssppActivity$b;-><init>(Lorg/ppsspp/ppsspp/PpssppActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveGameConfig()V
    .locals 0

    return-void
.end method

.method public senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "position"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "eventName"

    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public showMenuGate()V
    .locals 0

    return-void
.end method

.method public showMenuOnekey()V
    .locals 0

    return-void
.end method
