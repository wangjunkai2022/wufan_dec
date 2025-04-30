.class Lcom/join/mgps/dialog/g$d;
.super Landroid/widget/BaseAdapter;
.source "ArenaCreateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/g$d$b;,
        Lcom/join/mgps/dialog/g$d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dialog/g$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/dialog/g;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dialog/g$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g$d;->b:Lcom/join/mgps/dialog/g;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/dialog/g$d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/g$c;

    iget p1, p1, Lcom/join/mgps/dialog/g$c;->b:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/g$d;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/dialog/g$d;->b:Lcom/join/mgps/dialog/g;

    iget p2, p2, Lcom/join/mgps/dialog/g;->e:I

    if-ne v0, p2, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c02ea

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/join/mgps/dialog/g$d$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/dialog/g$d$b;-><init>(Lcom/join/mgps/dialog/g$d;)V

    const v2, 0x7f091192

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/dialog/g$d$b;->a:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c02eb

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 8
    new-instance v1, Lcom/join/mgps/dialog/g$d$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/g$d$a;-><init>(Lcom/join/mgps/dialog/g$d;)V

    const p3, 0x7f091117

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v1, Lcom/join/mgps/dialog/g$d$a;->a:Landroid/widget/TextView;

    const p3, 0x7f090418

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v1, Lcom/join/mgps/dialog/g$d$a;->b:Landroid/view/View;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/dialog/g$d;->b:Lcom/join/mgps/dialog/g;

    iget p3, p3, Lcom/join/mgps/dialog/g;->e:I

    if-ne v0, p3, :cond_2

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dialog/g$d$b;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/join/mgps/dialog/g$d$a;

    .line 16
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/dialog/g$d;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/g$c;

    .line 17
    iget-object p3, p0, Lcom/join/mgps/dialog/g$d;->b:Lcom/join/mgps/dialog/g;

    iget p3, p3, Lcom/join/mgps/dialog/g;->e:I

    if-ne v0, p3, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    iget-object p3, v1, Lcom/join/mgps/dialog/g$d$a;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/dialog/g$c;->a:Lcom/join/mgps/dto/GameConfig;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, v1, Lcom/join/mgps/dialog/g$d$a;->a:Landroid/widget/TextView;

    const p3, 0x7f080a95

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
