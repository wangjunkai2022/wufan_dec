.class Lcom/join/mgps/service/CommonService_$s1;
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
.field public static final b:Ljava/lang/String; = "gameData"


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$s1;->a:Lcom/join/mgps/service/CommonService_;

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
    const-string p2, "gameData"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/service/CommonService_$s1;->a:Lcom/join/mgps/service/CommonService_;

    invoke-virtual {p2, p1}, Lcom/join/mgps/service/CommonService;->l0(Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method
