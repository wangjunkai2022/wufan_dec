.class Lcom/papa91/arc/MApplication$1;
.super Ljava/lang/Object;
.source "MApplication.java"

# interfaces
.implements Lcom/papa91/arc/CContext$ISharePrefrence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MApplication;->initSharePref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MApplication;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MApplication;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MApplication$1;->this$0:Lcom/papa91/arc/MApplication;

    iput-object p2, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmulatorCheckpointUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "emulatorCheckpointUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmulatorGoldenFingerUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "emulatorGoldenFingerUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmulatorOneSkillUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "emulatorOneSkillUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmulatorStartAdCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "emulatorStartAdCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHasShowAdInfo()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "hasShowAdInfo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPspGameAdCfg()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "pspGameAdCfg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveHasShowAdInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.adInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "md5Str"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/MApplication$1;->this$0:Lcom/papa91/arc/MApplication;

    invoke-virtual {p1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
