.class Lcom/join/mgps/adapter/h4$h;
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
.field final synthetic a:Lcom/join/mgps/dto/AppBeanMain;

.field final synthetic b:Lcom/join/mgps/dto/MgpapaMainItemBean;

.field final synthetic c:Lcom/join/mgps/dto/AppBean;

.field final synthetic d:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/dto/MgpapaMainItemBean;Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$h;->d:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$h;->a:Lcom/join/mgps/dto/AppBeanMain;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    iput-object p4, p0, Lcom/join/mgps/adapter/h4$h;->c:Lcom/join/mgps/dto/AppBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$h;->a:Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$h;->d:Lcom/join/mgps/adapter/h4;

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$h;->c:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/h4$h;->c:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/adapter/h4$h;->c:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/adapter/h4;->q(Lcom/join/mgps/adapter/h4;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/h4$h;->d:Lcom/join/mgps/adapter/h4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/h4$h;->b:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$h;->d:Lcom/join/mgps/adapter/h4;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
