.class Lcom/papa91/paay/MyActivity$1;
.super Lcom/papa91/paay/PaayReceiver;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/MyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/paay/MyActivity;


# direct methods
.method constructor <init>(Lcom/papa91/paay/MyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    invoke-direct {p0}, Lcom/papa91/paay/PaayReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    iget-object p2, p2, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";token="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    iget-object p2, p2, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    invoke-virtual {p1}, Lcom/papa91/paay/MyActivity;->lobbyPlayCheck()V

    return-void
.end method
