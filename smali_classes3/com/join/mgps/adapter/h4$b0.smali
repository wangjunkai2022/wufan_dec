.class Lcom/join/mgps/adapter/h4$b0;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$b0;->c:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$b0;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$b0;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$b0;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/adapter/h4$b0;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/h4$b0;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 5
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$b0;->c:Lcom/join/mgps/adapter/h4;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$b0;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$b0;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$b0;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$b0;->c:Lcom/join/mgps/adapter/h4;

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$b0;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/join/mgps/adapter/h4;->q(Lcom/join/mgps/adapter/h4;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$b0;->c:Lcom/join/mgps/adapter/h4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$b0;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-x"

    const-string v3, "-0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    return-void
.end method
