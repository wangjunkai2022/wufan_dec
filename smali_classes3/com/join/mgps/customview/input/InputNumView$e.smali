.class Lcom/join/mgps/customview/input/InputNumView$e;
.super Landroid/widget/BaseAdapter;
.source "InputNumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/input/InputNumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/InputNumView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/InputNumView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$e;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/input/InputNumView$e;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {p2}, Lcom/join/mgps/customview/input/InputNumView;->c(Lcom/join/mgps/customview/input/InputNumView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0314

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090ac4

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090ac2

    const/16 v2, 0x8

    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    .line 3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "0"

    .line 7
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xb

    if-ne p1, v3, :cond_2

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p2
.end method
