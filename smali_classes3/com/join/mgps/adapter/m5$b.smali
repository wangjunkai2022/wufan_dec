.class Lcom/join/mgps/adapter/m5$b;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m5;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic b:Lcom/join/mgps/adapter/m5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5$b;->b:Lcom/join/mgps/adapter/m5;

    iput-object p2, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v5

    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->b:Lcom/join/mgps/adapter/m5;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/m5;->A()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v7

    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/m5$g;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$b;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/m5$g;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
