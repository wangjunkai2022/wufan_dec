.class Lcom/join/mgps/adapter/h4$u;
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

.field final synthetic b:Lcom/join/mgps/business/RecomDatabeanBusiness;

.field final synthetic c:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/business/RecomDatabeanBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$u;->c:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$u;->a:Lcom/join/mgps/dto/AppBeanMain;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$u;->b:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$u;->c:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->s(Lcom/join/mgps/adapter/h4;)Lo1/e;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$u;->a:Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$u;->a:Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getIs_bespeak()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lo1/e;->a(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$u;->c:Lcom/join/mgps/adapter/h4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$u;->b:Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    return-void
.end method
