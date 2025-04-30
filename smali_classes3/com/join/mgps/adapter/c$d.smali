.class Lcom/join/mgps/adapter/c$d;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c;->E(Landroid/view/ViewGroup;Landroid/view/View;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/join/mgps/dto/TodayWufunEmuClassify;

.field final synthetic c:Lcom/join/mgps/adapter/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/c;Landroid/view/ViewGroup;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$d;->c:Lcom/join/mgps/adapter/c;

    iput-object p2, p0, Lcom/join/mgps/adapter/c$d;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/join/mgps/adapter/c$d;->b:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/adapter/c$d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/adapter/c$d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/c$d;->c:Lcom/join/mgps/adapter/c;

    iget-object v0, p0, Lcom/join/mgps/adapter/c$d;->b:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/c;->B(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    return-void
.end method
