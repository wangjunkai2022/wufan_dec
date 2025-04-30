.class Lcom/papa91/arc/EmuActivity_psp$6;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$6;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$6;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->gameOnPause()V

    return-void
.end method
