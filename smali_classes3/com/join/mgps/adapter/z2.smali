.class public Lcom/join/mgps/adapter/z2;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "ModGameRecomendShrinkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c031f

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/join/mgps/base/b;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 2

    const v0, 0x7f0907c9

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    const v0, 0x7f09109e

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/z2;->a(Lcom/join/mgps/base/b;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    return-void
.end method
