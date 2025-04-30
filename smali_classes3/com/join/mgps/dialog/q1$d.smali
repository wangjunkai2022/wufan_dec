.class Lcom/join/mgps/dialog/q1$d;
.super Landroid/widget/BaseAdapter;
.source "PostingSelectCoinsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/q1$d$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/q1;


# direct methods
.method private constructor <init>(Lcom/join/mgps/dialog/q1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/q1$d;->a:Lcom/join/mgps/dialog/q1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/dialog/q1;Lcom/join/mgps/dialog/q1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/q1$d;-><init>(Lcom/join/mgps/dialog/q1;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/q1$d;->a:Lcom/join/mgps/dialog/q1;

    invoke-static {v0}, Lcom/join/mgps/dialog/q1;->a(Lcom/join/mgps/dialog/q1;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/q1$d;->a:Lcom/join/mgps/dialog/q1;

    invoke-static {v0}, Lcom/join/mgps/dialog/q1;->a(Lcom/join/mgps/dialog/q1;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c032d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/dialog/q1$d$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/dialog/q1$d$a;-><init>(Lcom/join/mgps/dialog/q1$d;)V

    const v0, 0x7f0911a1

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dialog/q1$d$a;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/q1$d;->a:Lcom/join/mgps/dialog/q1;

    invoke-static {v0}, Lcom/join/mgps/dialog/q1;->a(Lcom/join/mgps/dialog/q1;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/q1$c;

    .line 7
    iget-object v0, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/join/mgps/dialog/q1$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\u94dc\u677f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v0, p1, Lcom/join/mgps/dialog/q1$c;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/join/mgps/dialog/q1$d;->a:Lcom/join/mgps/dialog/q1;

    invoke-static {v1}, Lcom/join/mgps/dialog/q1;->b(Lcom/join/mgps/dialog/q1;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 9
    iget-object p1, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    const-string v0, "#a8a8a8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    const p3, 0x7f0801ac

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dialog/q1$c;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    const p3, 0x7f080174

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    const-string v0, "#3CA4FD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p1, p3, Lcom/join/mgps/dialog/q1$d$a;->a:Landroid/widget/TextView;

    const p3, 0x7f0801ab

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-object p2
.end method
