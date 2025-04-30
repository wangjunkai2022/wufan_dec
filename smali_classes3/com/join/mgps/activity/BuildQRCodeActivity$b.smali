.class Lcom/join/mgps/activity/BuildQRCodeActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "BuildQRCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/BuildQRCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/BuildQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/BuildQRCodeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity$b;->a:Lcom/join/mgps/activity/BuildQRCodeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "wifi_state"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity$b;->a:Lcom/join/mgps/activity/BuildQRCodeActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/BuildQRCodeActivity;->j:Landroid/content/Context;

    const-string p2, "\u70ed\u70b9\u5df2\u5173\u95ed"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity$b;->a:Lcom/join/mgps/activity/BuildQRCodeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
