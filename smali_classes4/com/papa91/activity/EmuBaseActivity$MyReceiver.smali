.class Lcom/papa91/activity/EmuBaseActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "/so"

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "vipLevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sVipLevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "uid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget v0, p2, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    iget p2, p2, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    invoke-static {v0, p2}, Lcom/papa91/activity/EmuBaseActivity;->setVipType(II)V

    const/4 p2, 0x1

    .line 6
    :try_start_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    aget-object v1, p1, v0

    aget-object p1, p1, v0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1ae

    if-lt p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget v0, p1, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    if-lez v0, :cond_1

    .line 13
    iget-object p1, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object p1, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 15
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 16
    invoke-static {p2}, Lcom/papa91/activity/EmuBaseActivity;->setAdResult(I)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->onVipChanged()V

    return-void
.end method
