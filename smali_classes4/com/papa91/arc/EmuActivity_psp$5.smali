.class Lcom/papa91/arc/EmuActivity_psp$5;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->exit1()V
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
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$5;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$5;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$5;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$700(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$5;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$5;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    :cond_1
    return-void
.end method
