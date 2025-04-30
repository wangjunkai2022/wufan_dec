.class public Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sVipLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1802(Lcom/papa91/arc/EmuActivity_psp;I)I

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "vipLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "tourist"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->loginFinish()V

    return-void
.end method
