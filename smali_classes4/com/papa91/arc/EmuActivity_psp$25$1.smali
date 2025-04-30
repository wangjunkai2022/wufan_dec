.class Lcom/papa91/arc/EmuActivity_psp$25$1;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/EmuActivity_psp$25;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp$25;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    iget-object v1, v0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v2, v1, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget v0, v0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    invoke-static {v1, v2, p1, p2, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$2100(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method public onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    const-string v1, "closedRealNameWindow"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    iget-object v1, v0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v2, v1, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget v0, v0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    invoke-static {v1, v2, p1, p2, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$2100(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method
