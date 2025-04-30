.class public Lcom/join/mgps/adapter/f2;
.super Landroid/widget/BaseAdapter;
.source "GameSingleConpanyAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/f2;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/f2;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/f2;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Lk1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/b;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f2;->a:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/f2;->a(I)Lk1/b;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/f2;->c:Landroid/view/LayoutInflater;

    const p3, 0x7f0c024f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0906a1

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906a3

    .line 3
    invoke-static {p2, v0}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0902d3

    .line 4
    invoke-static {p2, v1}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900e7

    .line 5
    invoke-static {p2, v2}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902d4

    .line 6
    invoke-static {p2, v3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900e8

    .line 7
    invoke-static {p2, v4}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090d39

    .line 8
    invoke-static {p2, v5}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/f2;->a(I)Lk1/b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lk1/b;->a()Lcom/join/mgps/dto/GameOLHeadAdBean;

    move-result-object v6

    .line 11
    invoke-virtual {p1}, Lk1/b;->b()Lcom/join/mgps/dto/GameOLHeadAdBean;

    move-result-object p1

    const v7, 0x7f080168

    .line 12
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getPic_remote()Ljava/lang/String;

    move-result-object v8

    invoke-static {p3, v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getSub_title()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getSub()Ljava/util/List;

    move-result-object v1

    const-string v7, "</font>\u6b3e\u6e38\u620f"

    const-string v8, "<font color=\'0xF47500\' >"

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 16
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CompanySubBean;

    .line 17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CompanySubBean;->getGame_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 20
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CompanySubBean;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CompanySubBean;->getGame_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    const v1, 0x7f080a74

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getSub_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 26
    :goto_0
    new-instance v1, Lcom/join/mgps/adapter/f2$a;

    invoke-direct {v1, p0, v6}, Lcom/join/mgps/adapter/f2$a;-><init>(Lcom/join/mgps/adapter/f2;Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance p3, Lcom/join/mgps/adapter/f2$b;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/f2$b;-><init>(Lcom/join/mgps/adapter/f2;Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
