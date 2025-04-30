.class Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmuReceiveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.emu.ad.result"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "adAction"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    const-string p1, "exit"

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->access$102(Lcom/papa91/arc/EmuActivity_psp;Z)Z

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->access$202(Lcom/papa91/arc/EmuActivity_psp;I)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$300(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$400(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    :cond_2
    :goto_0
    return-void
.end method
