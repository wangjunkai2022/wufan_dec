.class public Lcom/join/mgps/adapter/c$v;
.super Lcom/join/mgps/adapter/c$h0;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "v"
.end annotation


# instance fields
.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field final synthetic h:Lcom/join/mgps/adapter/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->h:Lcom/join/mgps/adapter/c;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c$h0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    const p1, 0x7f090687

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090acd

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->c:Landroid/widget/TextView;

    const p1, 0x7f090540

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->d:Landroid/widget/TextView;

    const p1, 0x7f090541

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->e:Landroid/widget/TextView;

    const p1, 0x7f090cb5

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->f:Landroid/widget/TextView;

    const p1, 0x7f090340

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/c$v;->g:Landroid/widget/TextView;

    return-void
.end method
