.class Lcom/join/mgps/adapter/ForumProfileAdapter$c;
.super Ljava/lang/Object;
.source "ForumProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileAdapter;->u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileAdapter;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$c;->c:Lcom/join/mgps/adapter/ForumProfileAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$c;->a:Ljava/util/List;

    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$c;->b:I

    invoke-static {p1, v1, v0}, Lcom/join/mgps/Util/i0;->G0(Landroid/content/Context;I[Ljava/lang/String;)V

    return-void
.end method
