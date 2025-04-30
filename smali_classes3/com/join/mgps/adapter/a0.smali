.class public Lcom/join/mgps/adapter/a0;
.super Landroid/widget/BaseAdapter;
.source "FriendGameLevelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/a0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/a0;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/a0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/GameLevelBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameLevelBean;

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a0;->b:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/a0;->b:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/a0;->a(I)Lcom/join/mgps/dto/GameLevelBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/a0$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/a0$a;-><init>(Lcom/join/mgps/adapter/a0;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/a0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0308

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09067e

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/a0$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/a0$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0908b3

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/a0$a;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/a0$a;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/a0;->a(I)Lcom/join/mgps/dto/GameLevelBean;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameLevelBean;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameLevelBean;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const v0, 0x7f08047e

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f08047d

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const v0, 0x7f08047b

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const v0, 0x7f08047c

    goto :goto_1

    :cond_4
    const v0, 0x7f08047a

    .line 11
    :goto_1
    iget-object v1, p2, Lcom/join/mgps/adapter/a0$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, p2, Lcom/join/mgps/adapter/a0$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameLevelBean;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    :goto_2
    iget-object v0, p2, Lcom/join/mgps/adapter/a0$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameLevelBean;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p2, Lcom/join/mgps/adapter/a0$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameLevelBean;->getLevelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
