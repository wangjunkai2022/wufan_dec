.class public Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.emu.realName.result"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->onHandlerResultNameResult(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
