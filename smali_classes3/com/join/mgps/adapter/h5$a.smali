.class Lcom/join/mgps/adapter/h5$a;
.super Ll1/m;
.source "SearchGameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h5;->v(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic b:Lcom/join/mgps/adapter/h5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h5$a;->b:Lcom/join/mgps/adapter/h5;

    iput-object p2, p0, Lcom/join/mgps/adapter/h5$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-direct {p0}, Ll1/m;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs b0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ll1/m;->b0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/h5$a;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {p2}, Lcom/join/mgps/adapter/h5;->m(Lcom/join/mgps/adapter/h5;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/h5$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h5$a;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v1}, Lcom/join/mgps/adapter/h5;->m(Lcom/join/mgps/adapter/h5;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/h5$a;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
