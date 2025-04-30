.class Lcom/join/mgps/fragment/c3$c;
.super Ljava/lang/Object;
.source "LabelFragment.java"

# interfaces
.implements Lcom/join/mgps/listener/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c3$c;->a:Lcom/join/mgps/fragment/c3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3$c;->a:Lcom/join/mgps/fragment/c3;

    iget-object v0, v0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f88

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method
