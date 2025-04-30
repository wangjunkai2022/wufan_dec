.class Lcom/join/mgps/adapter/ForumAllAdapter$a;
.super Ljava/lang/Object;
.source "ForumAllAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumAllAdapter;->h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$a;->b:Lcom/join/mgps/adapter/ForumAllAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter$a;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$a;->b:Lcom/join/mgps/adapter/ForumAllAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumAllAdapter;->d:Lcom/join/mgps/adapter/ForumAllAdapter$d;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter$a;->a:Lcom/join/mgps/dto/ForumBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumAllAdapter$d;->f(Lcom/join/mgps/dto/ForumBean;)V

    :cond_0
    return-void
.end method
