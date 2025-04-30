.class Lcom/join/mgps/fragment/w$a;
.super Ljava/lang/Object;
.source "CommentAllListFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/LoadMoreRecyclerView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/w;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/w;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/w$a;->a:Lcom/join/mgps/fragment/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w$a;->a:Lcom/join/mgps/fragment/w;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/w;->O()V

    return-void
.end method
