.class Lcom/join/mgps/activity/ApFightActivity$f;
.super Ljava/lang/Object;
.source "ApFightActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity;->getDeviceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/g<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$f;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$f;->a:Lcom/join/mgps/activity/ApFightActivity;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$f;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$1500(Lcom/join/mgps/activity/ApFightActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$f;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$1600(Lcom/join/mgps/activity/ApFightActivity;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$f;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$f;->a:Lcom/join/mgps/activity/ApFightActivity;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/z;->W(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ApFightActivity$f;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
