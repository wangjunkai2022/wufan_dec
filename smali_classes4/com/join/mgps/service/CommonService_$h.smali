.class Lcom/join/mgps/service/CommonService_$h;
.super Landroid/content/BroadcastReceiver;
.source "CommonService_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "packageName"

.field public static final c:Ljava/lang/String; = "gameId"

.field public static final d:Ljava/lang/String; = "uid"

.field public static final e:Ljava/lang/String; = "sec"


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$h;->a:Lcom/join/mgps/service/CommonService_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

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
    const-string p2, "packageName"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p2, "gameId"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "uid"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "sec"

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$h;->a:Lcom/join/mgps/service/CommonService_;

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/service/CommonService;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
