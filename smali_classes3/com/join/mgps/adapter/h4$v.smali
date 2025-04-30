.class Lcom/join/mgps/adapter/h4$v;
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
.field final synthetic a:Lcom/join/mgps/dto/BannerBean;

.field final synthetic b:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$v;->b:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$v;->a:Lcom/join/mgps/dto/BannerBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$v;->b:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4$v;->a:Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
