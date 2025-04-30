.class public Lcom/join/mgps/adapter/c$b0;
.super Lcom/join/mgps/adapter/c$h0;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b0"
.end annotation


# instance fields
.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field final synthetic f:Lcom/join/mgps/adapter/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$b0;->f:Lcom/join/mgps/adapter/c;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c$h0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    const p1, 0x7f090311

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$b0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090acd

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$b0;->c:Landroid/widget/TextView;

    const p1, 0x7f090340

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$b0;->d:Landroid/widget/TextView;

    const p1, 0x7f090327

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$b0;->e:Landroid/widget/TextView;

    return-void
.end method
