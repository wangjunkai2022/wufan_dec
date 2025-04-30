.class Lcom/join/mgps/adapter/ForumBaseAdapter$r;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->z0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean;

.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const v1, 0x7f11010d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;->j(Lcom/join/mgps/dto/ForumBean;)V

    :cond_1
    return-void
.end method
