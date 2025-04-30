.class Lcom/join/mgps/customview/XListView4Forum$a;
.super Ljava/lang/Object;
.source "XListView4Forum.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XListView4Forum;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView4Forum;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum$a;->a:Lcom/join/mgps/customview/XListView4Forum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum$a;->a:Lcom/join/mgps/customview/XListView4Forum;

    iget-object v1, v0, Lcom/join/mgps/customview/XListView4Forum;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/join/mgps/customview/XListView4Forum;->j:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum$a;->a:Lcom/join/mgps/customview/XListView4Forum;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
