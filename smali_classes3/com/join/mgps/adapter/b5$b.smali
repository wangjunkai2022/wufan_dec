.class Lcom/join/mgps/adapter/b5$b;
.super Ljava/lang/Object;
.source "SearchAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/b5;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic b:Lcom/join/mgps/adapter/b5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/b5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b5$b;->b:Lcom/join/mgps/adapter/b5;

    iput-object p2, p0, Lcom/join/mgps/adapter/b5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/b5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/b5$b;->b:Lcom/join/mgps/adapter/b5;

    invoke-static {p1}, Lcom/join/mgps/adapter/b5;->a(Lcom/join/mgps/adapter/b5;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/b5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/b5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/b5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v4

    const/16 v5, 0x70

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/b5$b;->b:Lcom/join/mgps/adapter/b5;

    iget-object p1, p1, Lcom/join/mgps/adapter/b5;->f:Lcom/join/mgps/adapter/b5$d;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/b5$b;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/b5$d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
