.class Lcom/join/mgps/fragment/t4$k;
.super Ljava/lang/Object;
.source "SearchListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/t4;->f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SearchGameFavoriteListBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/t4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/t4$k;->c:Lcom/join/mgps/fragment/t4;

    iput-object p2, p0, Lcom/join/mgps/fragment/t4$k;->a:Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    iput p3, p0, Lcom/join/mgps/fragment/t4$k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t4$k;->c:Lcom/join/mgps/fragment/t4;

    iget-object v1, p0, Lcom/join/mgps/fragment/t4$k;->a:Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    iget v2, p0, Lcom/join/mgps/fragment/t4$k;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/t4;->v0(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    return-void
.end method
