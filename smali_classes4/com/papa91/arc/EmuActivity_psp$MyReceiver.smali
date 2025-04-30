.class Lcom/papa91/arc/EmuActivity_psp$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "vipLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sVipLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "uid"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 5
    sput p1, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1302(Lcom/papa91/arc/EmuActivity_psp;I)I

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->onVipChanged()V

    return-void
.end method
