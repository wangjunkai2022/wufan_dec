.class Lcom/join/mgps/activity/UploadActivity_$k;
.super Landroid/content/BroadcastReceiver;
.source "UploadActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/UploadActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "upload_result"


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/UploadActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity_$k;->a:Lcom/join/mgps/activity/UploadActivity_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

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
    const-string p2, "upload_result"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity_$k;->a:Lcom/join/mgps/activity/UploadActivity_;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/UploadActivity;->c1(I)V

    return-void
.end method
