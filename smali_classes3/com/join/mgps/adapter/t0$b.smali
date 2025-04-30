.class Lcom/join/mgps/adapter/t0$b;
.super Ljava/lang/Object;
.source "GamdetialInformationStrategyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t0;->h(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/t0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t0$b;->b:Lcom/join/mgps/adapter/t0;

    iput p2, p0, Lcom/join/mgps/adapter/t0$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    iget v0, p0, Lcom/join/mgps/adapter/t0$b;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/t0$b;->b:Lcom/join/mgps/adapter/t0;

    invoke-static {v0}, Lcom/join/mgps/adapter/t0;->a(Lcom/join/mgps/adapter/t0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method
