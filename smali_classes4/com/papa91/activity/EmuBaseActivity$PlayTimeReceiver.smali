.class public Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sVipLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "vipLevel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget v0, v0, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget v0, v0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "tourist"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 11
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p2}, Lcom/papa91/activity/EmuBaseActivity;->loginFinish()V

    .line 12
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {p2, v1}, Lcom/papa91/activity/EmuBaseActivity;->access$002(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 13
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const/16 v0, 0xb

    invoke-static {p2, v0}, Lcom/papa91/activity/EmuBaseActivity;->access$102(Lcom/papa91/activity/EmuBaseActivity;I)I

    .line 14
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnsign(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->updateAutoSlotData()V

    .line 16
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->onVipChanged()V

    return-void
.end method
