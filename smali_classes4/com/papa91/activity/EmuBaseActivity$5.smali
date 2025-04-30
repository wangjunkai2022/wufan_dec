.class Lcom/papa91/activity/EmuBaseActivity$5;
.super Lcom/papa91/paay/PaayReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$5;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Lcom/papa91/paay/PaayReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "sp"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 4
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "isbuy"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p2, "data"

    const-string v0, "already"

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->selectCondition(I)V

    return-void
.end method
