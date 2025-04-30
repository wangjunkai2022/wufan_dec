.class Lcom/join/mgps/adapter/r1$i;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic b:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$i;->b:Lcom/join/mgps/adapter/r1;

    iput-object p2, p0, Lcom/join/mgps/adapter/r1$i;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$i;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$i;->b:Lcom/join/mgps/adapter/r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1;->f:Lcom/join/mgps/adapter/r1$c1;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/join/mgps/adapter/r1$i;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/r1$c1;->l(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$i;->b:Lcom/join/mgps/adapter/r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1;->f:Lcom/join/mgps/adapter/r1$c1;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/join/mgps/adapter/r1$i;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/r1$c1;->l(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    :goto_0
    return-void
.end method
