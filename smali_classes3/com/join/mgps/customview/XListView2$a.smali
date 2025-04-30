.class Lcom/join/mgps/customview/XListView2$a;
.super Landroid/database/DataSetObserver;
.source "XListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListAdapter;

.field final synthetic b:Lcom/join/mgps/customview/XListView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView2;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView2$a;->b:Lcom/join/mgps/customview/XListView2;

    iput-object p2, p0, Lcom/join/mgps/customview/XListView2$a;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView2$a;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView2$a;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->j()V

    return-void
.end method
