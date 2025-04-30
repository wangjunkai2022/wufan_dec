.class Lcom/join/mgps/adapter/t4$a;
.super Ljava/lang/Object;
.source "PapaMainV2Adapter.java"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t4;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/t4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$a;->b:Lcom/join/mgps/adapter/t4;

    iput-object p2, p0, Lcom/join/mgps/adapter/t4$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$a;->b:Lcom/join/mgps/adapter/t4;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/adapter/t4;->l(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$a;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p2

    const/4 p3, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    new-instance p2, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    invoke-direct {p2, p3}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-ne v0, p3, :cond_2

    .line 10
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    new-instance p2, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    invoke-direct {p2, v2}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getSub_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p3, p0, Lcom/join/mgps/adapter/t4$a;->b:Lcom/join/mgps/adapter/t4;

    invoke-static {p3}, Lcom/join/mgps/adapter/t4;->m(Lcom/join/mgps/adapter/t4;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/adapter/t4$a;->b:Lcom/join/mgps/adapter/t4;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/join/mgps/adapter/t4;->n(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V

    return-void
.end method
