.class Lcom/papa91/arc/EmuActivity_psp$20;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->showNetworkFailed()V
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
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$20;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuyVip()V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$20;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
