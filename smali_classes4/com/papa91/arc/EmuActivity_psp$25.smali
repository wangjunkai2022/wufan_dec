.class Lcom/papa91/arc/EmuActivity_psp$25;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$result:Lcom/papa91/arc/bean/PopwindowBean;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    iput p3, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/EmuActivity_psp$25;Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp$25;->lambda$run$0(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result p2

    const-string v0, "0"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    const-string p2, "nonageAstrictHint"

    invoke-virtual {p1, p2, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    const-string p2, "realNameUpWindows"

    invoke-virtual {p1, p2, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0}, Lcom/papa91/arc/EmuActivity_psp;->closeRealNameDialog()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    iget v2, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    invoke-static {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    const-string v1, "antiAddtionWindowUp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    new-instance v1, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {v1, v2}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$25$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$25$1;-><init>(Lcom/papa91/arc/EmuActivity_psp$25;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    new-instance v2, Lcom/papa91/arc/h;

    invoke-direct {v2, p0, v1}, Lcom/papa91/arc/h;-><init>(Lcom/papa91/arc/EmuActivity_psp$25;Lcom/papa91/arc/bean/PopwindowBean;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
