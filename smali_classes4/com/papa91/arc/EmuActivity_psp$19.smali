.class Lcom/papa91/arc/EmuActivity_psp$19;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->initTimeLimitedDialog()V
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
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$19;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuyVip(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$19;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0}, Lcom/papa91/arc/EmuActivity_psp;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->login()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$19;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
