.class Lcom/join/mgps/adapter/ForumAllAdapter$b;
.super Ljava/lang/Object;
.source "ForumAllAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumAllAdapter;->g(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean;

.field final synthetic b:Lcom/join/mgps/adapter/ForumAllAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumAllAdapter;Lcom/join/mgps/dto/ForumBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->b:Lcom/join/mgps/adapter/ForumAllAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->b:Lcom/join/mgps/adapter/ForumAllAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumAllAdapter;->d:Lcom/join/mgps/adapter/ForumAllAdapter$d;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumAllAdapter$d;->b(Lcom/join/mgps/dto/ForumBean;)V

    :cond_1
    return-void
.end method
