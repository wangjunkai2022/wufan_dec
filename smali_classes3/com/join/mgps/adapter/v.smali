.class public final synthetic Lcom/join/mgps/adapter/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field public final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/v;->a:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/v;->b:Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/v;->a:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/adapter/v;->b:Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->a(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;Landroid/view/View;)V

    return-void
.end method
