.class Lcom/join/mgps/adapter/h4$r;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$r;->c:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$r;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$r;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$r;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$r;->c:Lcom/join/mgps/adapter/h4;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getSp_tpl_two_position()I

    move-result v5

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$r;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$r;->c:Lcom/join/mgps/adapter/h4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$r;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method
