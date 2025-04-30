.class Lcom/join/mgps/adapter/d1$a;
.super Ljava/lang/Object;
.source "GameDetailRecomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/d1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d1$a;->b:Lcom/join/mgps/adapter/d1;

    iput p2, p0, Lcom/join/mgps/adapter/d1$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d1$a;->b:Lcom/join/mgps/adapter/d1;

    invoke-static {p1}, Lcom/join/mgps/adapter/d1;->a(Lcom/join/mgps/adapter/d1;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/d1$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendGameBean;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/d1$a;->b:Lcom/join/mgps/adapter/d1;

    invoke-static {v1}, Lcom/join/mgps/adapter/d1;->b(Lcom/join/mgps/adapter/d1;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendGameBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendGameBean;->getTpl_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendGameBean;->getSp_tpl_two_position()I

    move-result v4

    iget-object p1, p0, Lcom/join/mgps/adapter/d1$a;->b:Lcom/join/mgps/adapter/d1;

    invoke-static {p1}, Lcom/join/mgps/adapter/d1;->c(Lcom/join/mgps/adapter/d1;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
