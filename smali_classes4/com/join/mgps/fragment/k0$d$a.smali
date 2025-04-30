.class Lcom/join/mgps/fragment/k0$d$a;
.super Ll1/m;
.source "FindMiniGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k0$d;->j(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic b:Lcom/join/mgps/fragment/k0$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/k0$d$a;->b:Lcom/join/mgps/fragment/k0$d;

    iput-object p2, p0, Lcom/join/mgps/fragment/k0$d$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-direct {p0}, Ll1/m;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs b0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ll1/m;->b0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/k0$d$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    const/16 p2, 0x96

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/fragment/k0$d$a;->b:Lcom/join/mgps/fragment/k0$d;

    iget-object p2, p2, Lcom/join/mgps/fragment/k0$d;->d:Lcom/join/mgps/fragment/k0;

    iget-object p2, p2, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/fragment/k0$d$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public d0()V
    .locals 3

    .line 1
    invoke-super {p0}, Ll1/m;->d0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$d$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/k0$d$a;->b:Lcom/join/mgps/fragment/k0$d;

    iget-object v1, v1, Lcom/join/mgps/fragment/k0$d;->d:Lcom/join/mgps/fragment/k0;

    iget-object v1, v1, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/k0$d$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
