.class Lcom/join/mgps/fragment/o0$e;
.super Ljava/lang/Object;
.source "ForumGroupPostsFragment.java"

# interfaces
.implements Lcom/join/mgps/listener/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o0;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o0$e;->a:Lcom/join/mgps/fragment/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$e;->a:Lcom/join/mgps/fragment/o0;

    iget-object v1, v0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-static {v0}, Lcom/join/mgps/fragment/o0;->M(Lcom/join/mgps/fragment/o0;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070f88

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method
