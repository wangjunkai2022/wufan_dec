.class Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$a;
.super Landroid/content/BroadcastReceiver;
.source "DownloadHighSpeedingDialog_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "adAction"

.field public static final c:Ljava/lang/String; = "gameId"


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$a;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p2, "adAction"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "gameId"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$a;->a:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;

    invoke-virtual {v0, p2, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->I0(ILjava/lang/String;)V

    return-void
.end method
