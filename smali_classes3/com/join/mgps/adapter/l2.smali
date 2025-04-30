.class public Lcom/join/mgps/adapter/l2;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "HomeGameListGameNewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
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
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c047c

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;)V
    .locals 5

    const v0, 0x7f091095

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 2
    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "\u4eca\u5929"

    goto :goto_0

    .line 3
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "MM.dd"

    invoke-static {v3, v1}, Lcom/join/mgps/Util/x;->e(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f091096

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09109e

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0907c9

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getIco()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/l2;->a(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;)V

    return-void
.end method
