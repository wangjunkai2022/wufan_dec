.class Lcom/join/mgps/customview/XExpandableListView$b;
.super Ljava/lang/Object;
.source "XExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XExpandableListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XExpandableListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XExpandableListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView$b;->a:Lcom/join/mgps/customview/XExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView$b;->a:Lcom/join/mgps/customview/XExpandableListView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 2
    iget-object p1, p1, Lcom/join/mgps/customview/XExpandableListView;->m:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView$b;->a:Lcom/join/mgps/customview/XExpandableListView;

    iget-object p1, p1, Lcom/join/mgps/customview/XExpandableListView;->e:Lcom/join/mgps/customview/i;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/join/mgps/customview/i;->onLoadMore()V

    :cond_0
    return-void
.end method
