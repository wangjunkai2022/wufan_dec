.class Lcom/join/mgps/adapter/h4$z0;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->Y(Lcom/join/mgps/dto/AppBean;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/papa/sim/statistic/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/e;

.field final synthetic b:Lcom/join/mgps/dto/AppBean;

.field final synthetic c:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/papa/sim/statistic/e;Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->c:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$z0;->a:Lcom/papa/sim/statistic/e;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$z0;->b:Lcom/join/mgps/dto/AppBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->c:Lcom/join/mgps/adapter/h4;

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$z0;->a:Lcom/papa/sim/statistic/e;

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/h4;->y(Lcom/join/mgps/adapter/h4;Lcom/papa/sim/statistic/e;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->c:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->b:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->b:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->b:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSp_tpl_two_position()I

    move-result v5

    iget-object p1, p0, Lcom/join/mgps/adapter/h4$z0;->b:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
