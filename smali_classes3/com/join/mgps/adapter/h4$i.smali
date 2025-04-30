.class Lcom/join/mgps/adapter/h4$i;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/business/RecomDatabeanBusiness;

.field final synthetic b:Lcom/join/mgps/dto/MgpapaMainItemBean;

.field final synthetic c:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$i;->c:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$i;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$i;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$i;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$i;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "home"

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    const-string v1, "9-1000"

    invoke-direct {v0, v2, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$i;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    const-string v1, "10-1000"

    invoke-direct {v0, v2, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    const-string v1, "6-1-1"

    invoke-direct {v0, v2, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$i;->c:Lcom/join/mgps/adapter/h4;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    return-void
.end method
