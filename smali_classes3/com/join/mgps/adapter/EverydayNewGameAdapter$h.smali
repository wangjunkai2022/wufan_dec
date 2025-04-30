.class public Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lcom/join/mgps/adapter/EverydayNewGameAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->e:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09069b

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0904db

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->b:Landroid/widget/ImageView;

    const p1, 0x7f090104

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->c:Landroid/widget/TextView;

    const p1, 0x7f090a3a

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->d:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
