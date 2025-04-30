.class public Lcom/join/mgps/adapter/s;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "FastEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
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
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0511

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 2

    const v0, 0x7f090687

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    const v0, 0x7f090acd

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/s;->a(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method
