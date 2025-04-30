.class Lcom/join/mgps/fragment/o$a;
.super Landroid/os/Handler;
.source "CodesBoxFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o$a;->a:Lcom/join/mgps/fragment/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o$a;->a:Lcom/join/mgps/fragment/o;

    invoke-static {v0}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o$a;->a:Lcom/join/mgps/fragment/o;

    invoke-static {v2}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/o$a;->a:Lcom/join/mgps/fragment/o;

    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/fragment/o;->T(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    :cond_0
    return-void
.end method
