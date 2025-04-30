.class Lcom/MApplication$d$a;
.super Ljava/lang/Object;
.source "MApplication.java"

# interfaces
.implements Lcom/join/mgps/dialog/x1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication$d;->showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/AccountBean;

.field final synthetic d:Lcom/MApplication$d;


# direct methods
.method constructor <init>(Lcom/MApplication$d;Ljava/lang/String;ILcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iput-object p2, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/MApplication$d$a;->b:I

    iput-object p4, p0, Lcom/MApplication$d$a;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tools.AdBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget-object v1, v1, Lcom/MApplication$d;->b:Lcom/join/mgps/dto/PlayCfgBean;

    const-string v2, "playCfg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget v1, p0, Lcom/MApplication$d$a;->b:I

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget v1, v1, Lcom/MApplication$d;->f:I

    const-string v2, "adCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget v1, v1, Lcom/MApplication$d;->g:I

    const-string v2, "howTimes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget-boolean v1, v1, Lcom/MApplication$d;->j:Z

    const-string v2, "close"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "action"

    const/16 v2, 0x3ed

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget-object v1, v1, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 10
    iget-object v0, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget-boolean v1, v0, Lcom/MApplication$d;->j:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lcom/MApplication$d;->k:Lcom/MApplication;

    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Vedio:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/MApplication$d;->k:Lcom/MApplication;

    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Vedio:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.emu.ad.result"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adAction"

    const/16 v2, 0x3f0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget v2, p0, Lcom/MApplication$d$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "state"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "close"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget p1, p1, Lcom/MApplication$d;->f:I

    if-lez p1, :cond_0

    .line 10
    new-instance p1, Lcom/papa91/wrapper/UserPrefs;

    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-direct {p1, v0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/MApplication$d$a;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget v3, v2, Lcom/MApplication$d;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lcom/MApplication$d;->f:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/papa91/wrapper/UserPrefs;->setGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/MApplication$d$a;->d:Lcom/MApplication$d;

    iget-boolean v1, v0, Lcom/MApplication$d;->j:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/MApplication$d;->k:Lcom/MApplication;

    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Pop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/MApplication$d;->k:Lcom/MApplication;

    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Pop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/MApplication$d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->z(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
