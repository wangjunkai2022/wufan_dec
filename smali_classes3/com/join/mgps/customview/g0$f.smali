.class public Lcom/join/mgps/customview/g0$f;
.super Landroid/widget/BaseAdapter;
.source "PopBattleArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/g0$f$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/customview/g0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g0$f;->b:Lcom/join/mgps/customview/g0;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(I)Lcom/join/mgps/dto/GameConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameConfig;

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0$f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/g0$f;->b(I)Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/customview/g0$f$a;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/g0$f;->b:Lcom/join/mgps/customview/g0;

    iget-object p2, p2, Lcom/join/mgps/customview/g0;->s:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0091

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/join/mgps/customview/g0$f$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/g0$f$a;-><init>(Lcom/join/mgps/customview/g0$f;)V

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/customview/g0$f$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090d8e

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/customview/g0$f$a;->b:Landroid/widget/TextView;

    const v0, 0x7f09100f

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/customview/g0$f$a;->c:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/g0$f;->b(I)Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    .line 9
    iget-object v0, p3, Lcom/join/mgps/customview/g0$f$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 10
    iget-object v0, p3, Lcom/join/mgps/customview/g0$f$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getRoom_count()I

    move-result p1

    .line 12
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 13
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FFF47500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\u623f"

    .line 16
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    iget-object p1, p3, Lcom/join/mgps/customview/g0$f$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
