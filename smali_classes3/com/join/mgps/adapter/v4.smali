.class public Lcom/join/mgps/adapter/v4;
.super Landroid/widget/BaseAdapter;
.source "RankSelectRoloAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v4$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/join/mgps/adapter/v4$a;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/v4;->e:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/v4;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/v4;->a:Ljava/util/List;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/v4;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/v4$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/v4$a;-><init>(Lcom/join/mgps/adapter/v4;)V

    iput-object p2, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0330

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    const v0, 0x7f0907bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/v4$a;->a:Landroid/widget/LinearLayout;

    .line 4
    iget-object p3, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    const v0, 0x7f0907bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/v4$a;->b:Landroid/widget/ImageView;

    .line 5
    iget-object p3, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    const v0, 0x7f0907b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/v4$a;->c:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/v4$a;

    iput-object p3, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    .line 8
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/adapter/v4;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/v4;->e:I

    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/v4$a;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/v4$a;->c:Landroid/widget/TextView;

    const-string v0, "#6ee6fe"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/v4$a;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/v4$a;->c:Landroid/widget/TextView;

    const-string v0, "#156d84"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/adapter/v4;->d:Lcom/join/mgps/adapter/v4$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/v4$a;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
