.class Lcom/join/mgps/adapter/m5$e;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m5;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

.field final synthetic b:Lcom/join/mgps/adapter/m5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5$e;->b:Lcom/join/mgps/adapter/m5;

    iput-object p2, p0, Lcom/join/mgps/adapter/m5$e;->a:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/m5$e;->a:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getFid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    return-void
.end method
