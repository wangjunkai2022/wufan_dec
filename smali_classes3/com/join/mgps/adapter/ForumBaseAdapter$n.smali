.class Lcom/join/mgps/adapter/ForumBaseAdapter$n;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->x0(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;->g(I)V

    :cond_0
    return-void
.end method
