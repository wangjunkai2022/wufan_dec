.class Lcom/papa91/arc/EmuActivity_psp$18;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1500(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hideTimer()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1700(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->releaseTimer()V

    :cond_0
    return-void
.end method
