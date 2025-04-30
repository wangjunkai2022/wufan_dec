.class Lcom/join/mgps/adapter/f2$a;
.super Ljava/lang/Object;
.source "GameSingleConpanyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/f2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameOLHeadAdBean;

.field final synthetic b:Lcom/join/mgps/adapter/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/f2;Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f2$a;->b:Lcom/join/mgps/adapter/f2;

    iput-object p2, p0, Lcom/join/mgps/adapter/f2$a;->a:Lcom/join/mgps/dto/GameOLHeadAdBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/f2$a;->a:Lcom/join/mgps/dto/GameOLHeadAdBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getSub()Ljava/util/List;

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

    check-cast p1, Lcom/join/mgps/dto/CompanySubBean;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CompanySubBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/f2$a;->b:Lcom/join/mgps/adapter/f2;

    iget-object v1, v1, Lcom/join/mgps/adapter/f2;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method
