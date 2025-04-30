.class Lcom/join/mgps/adapter/p5$f;
.super Ljava/lang/Object;
.source "SimulatorAreaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/p5;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

.field final synthetic b:Lcom/join/mgps/adapter/p5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p5$f;->b:Lcom/join/mgps/adapter/p5;

    iput-object p2, p0, Lcom/join/mgps/adapter/p5$f;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/p5$f;->b:Lcom/join/mgps/adapter/p5;

    invoke-static {p1}, Lcom/join/mgps/adapter/p5;->a(Lcom/join/mgps/adapter/p5;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/p5$f;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/p5$f;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/p5$f;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p1, p0, Lcom/join/mgps/adapter/p5$f;->a:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
